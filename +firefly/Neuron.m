%{
# Neural data (spike times and event markers)
-> firefly.Session
-> firefly.SessionList
-> firefly.DataAcquisitionParam  
-> firefly.ElectrodeParam
cluster_id                  : int
---
# add additional attributes
channel_id                  : int     
electrode_id                : int     
electrode_type              : varchar(128)      
unit_type                   : varchar(20)       # 'sua', 'mua'
brain_area                  : varchar(128) 
spike_times                 : longblob
spike_waveform              : blob
spike_width                 : float
neuron_filestart=0          : longblob
neuron_trialbeg=0           : longblob
neuron_trialend=0           : longblob
neuron_trialrew=0           : longblob
%}

classdef Neuron < dj.Imported
    methods(Access=protected)
        function makeTuples(self,key)
            % use primary keys of session to lookup folder name from SessionLog Table
            [folder,electrode_type,brain_area] = fetchn(firefly.SessionList & ... % from table
                ['session_id = ' num2str(key.session_id)] & ['monk_name = ' '"' key.monk_name '"'],... % restrict
                'folder','electrode_type','brain_area'); % return attribute 
            folder = folder{:}; electrode_type = electrode_type{:}; brain_area = brain_area{:}; % unpack cell
            % move to data folder
            filepath = [folder '\neural data'];          
            cd(filepath);
            
            % determine type of electrode
            lineararray_types = fetch1(firefly.ElectrodeParam,'lineararray_types');
            utaharray_types = fetch1(firefly.ElectrodeParam,'utaharray_types');
            lineararray_type = []; utaharray_type = [];
            for k=1:length(electrode_type)
                lineararray_type = [lineararray_type find(cellfun(@(type) strcmp(electrode_type{k},type), lineararray_types),1)];
                utaharray_type = [utaharray_type find(cellfun(@(type) strcmp(electrode_type{k},type), utaharray_types),1)];
            end            
            
            if ~isempty(utaharray_type) % assume utaharray is recorded using Cereplex
                file_nev=dir('*.nev');
                [sua, mua] = GetUnits_phy('spike_times.npy', 'spike_clusters.npy', 'cluster_groups.csv','cluster_location.xls',utaharray_types{utaharray_type}); % requires npy-matlab package: https://github.com/kwikteam/npy-matlab
                brain_area = brain_area{strcmp(electrode_type,utaharray_types{utaharray_type})};
                fprintf(['... reading events from ' file_nev.name '\n']);
                events_nev = GetEvents_nev(file_nev.name); % requires package from Blackrock Microsystems: https://github.com/BlackrockMicrosystems/NPMK
                events_nev = InsertNaN2rewardtimes(events_nev);
                fs_spk = fetch1(firefly.DataAcquisitionParam,'fs_ns6');
                MapDualArray2BrainArea = @(x,y) char((y<=48)*x{1} + (y>48)*x{2}); % function to map electrode to brain area         
                nsua = length(sua);
                units = [sua mua]; nunits = length(units); 
                for i=1:nunits
                    key.cluster_id = units(i).cluster_id;
                    key.channel_id = units(i).channel_id;
                    key.electrode_id = units(i).electrode_id;
                    key.electrode_type = utaharray_types{utaharray_type};
                    if i<=nsua, key.unit_type = 'singleunit'; else, key.unit_type = 'multiunit'; end
                    if strcmp(utaharray_types{utaharray_type},'utah96'), key.brain_area = brain_area;
                    else, key.brain_area = MapDualArray2BrainArea(brain_area, key.electrode_id); end
                    key.spike_times = double(units(i).tspk)/fs_spk;
                    key.spike_waveform = units(i).spkwf;
                    key.spike_width = Compute_SpikeWidth(units(i).spkwf,fs_spk);
                    key.neuron_filestart = events_nev.t_start;
                    key.neuron_trialbeg = events_nev.t_beg;
                    key.neuron_trialend = events_nev.t_end;
                    key.neuron_trialrew = events_nev.t_rew;
                    self.insert(key);
                    fprintf('Populated cluster_id %d for experiment done on %s with animal %s \n',...
                        key.cluster_id,key.session_date,key.monk_name);
                end
            end            
        end
    end
end