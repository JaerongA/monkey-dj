%{
# Electrode parameters
arrayparam_id=1                         : int      # unique id for this paramater set
---
# list of parameters
lineararray_types=0                     : blob     # types of linear arrays
lineararray_channelcount=0              : blob     # channel counts of linear arrays             
utaharray_types=0                       : blob     # types of utah arrays
utaharray_channelcount=0                : blob     # channel counts of utah arrays       
%}

classdef ElectrodeParam < dj.Lookup
    properties
        contents = {
            1,...
            {'linearprobe16' 'linearprobe24' 'linearprobe32'},...
            [16 24 32],...
            {'utah96' 'utah2x48'},...
            [96 96],...
        }
    end
end