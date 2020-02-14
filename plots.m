%% fetch
data(1) = fetch(firefly.StatsBehaviour...
    & 'monk_name = "Bruno"'...
    & 'session_id = 41' ...
    & 'trial_type = "fireflyoff"','*');
data(2) = fetch(firefly.StatsBehaviour...
    & 'monk_name = "Schro"'...
    & 'session_id = 35' ...
    & 'trial_type = "fireflyoff"','*');
data(3) = fetch(firefly.StatsBehaviour...
    & 'monk_name = "Quigley"'...
    & 'session_id = 149' ...
    & 'trial_type = "fireflyoff"','*');

%% define colors
numdata = numel(data);
cmap = brewermap(numdata,'Set1');
% cmap = [[31 39 154]/255; ...
%     [154 121 31]/255; ...
%     [154 31 63]/255];
% cmap = [[137 185 24]/255; ...
%     [24 142 185]/255; ...
%     [169 24 185]/255];

%% plot distance and angle scatter
figure; hold on;

% distance scatter
subplot(1,2,1); hold on;
maxdist = 400;
% sample 500 trials
for i=1:numdata
    outliers = (data(i).monkey_rf./data(i).firefly_r < prctile(data(i).monkey_rf./data(i).firefly_r,0.5));
    data(i).firefly_r(outliers) = []; data(i).monkey_rf(outliers) = [];
    Ntot = numel(data(i).firefly_r);
    indx = randsample(Ntot,500); 
    firefly_r(i,:) = data(i).firefly_r(indx);
    monkey_rf(i,:) = data(i).monkey_rf(indx);
end
% plot
numsplits = 50; % split each dataset to prevent occluding when plotting
for j=1:numsplits
    for i=1:numdata
        plot(firefly_r(i,end*((j-1)/numsplits)+1:end*(j/numsplits)),...
            monkey_rf(i,end*((j-1)/numsplits)+1:end*(j/numsplits)),...
            'o','Color',cmap(i,:),'MarkerFaceColor',[.8 .8 .8],'MarkerSize',2);
    end
end
plot(0:maxdist,0:maxdist,'k');
% axis labels and title
axis([0 maxdist 0 maxdist]);
set(gca,'XTick',0:100:maxdist,'XTickLabel',0:maxdist/100);
set(gca,'YTick',0:100:maxdist,'YTickLabel',0:maxdist/100);
xlabel('Target (m)','Fontname','Arial');
ylabel('Response (m)','Fontname','Arial');
title('Radial distance','Fontname','Arial');
set(gca,'FontSize',14,'Fontname','Arial');

%angle scatter
subplot(1,2,2); hold on;
maxangle = 40;
% sample 500 trials
for i=1:numdata
    outliers = (data(i).monkey_thf./data(i).firefly_th < prctile(data(i).monkey_thf./data(i).firefly_th,1));
    data(i).firefly_th(outliers) = []; data(i).monkey_thf(outliers) = [];
    Ntot = numel(data(i).firefly_th);
    indx = randsample(Ntot,500); 
    firefly_th(i,:) = data(i).firefly_th(indx);
    monkey_thf(i,:) = data(i).monkey_thf(indx);
end
% plot
numsplits = 50; % split each dataset to prevent occluding when plotting
for j=1:numsplits
    for i=1:numdata
        plot(firefly_th(i,end*((j-1)/numsplits)+1:end*(j/numsplits)),...
            monkey_thf(i,end*((j-1)/numsplits)+1:end*(j/numsplits)),...
            'o','Color',cmap(i,:),'MarkerFaceColor',[.8 .8 .8],'MarkerSize',2);
    end
end
plot(-maxangle:maxangle,-maxangle:maxangle,'k');
% axis labels and title
axis([-maxangle maxangle -maxangle maxangle]);
xlabel('Target (m)','Fontname','Arial');
ylabel('Response (m)','Fontname','Arial');
title('Angular eccentricity','Fontname','Arial');
set(gca,'FontSize',14,'Fontname','Arial');
hline(0,'k'); vline(0,'k');

%% stopping distances
% fetch
data_off{1} = fetch(firefly.StatsBehaviour...
    & 'monk_name = "Bruno"'...
    & 'trial_type = "fireflyoff"','*');
data_off{2} = fetch(firefly.StatsBehaviour...
    & 'monk_name = "Schro"'...
    & 'trial_type = "fireflyoff"','*');
data_off{3} = fetch(firefly.StatsBehaviour...
    & 'monk_name = "Quigley"'...
    & 'trial_type = "fireflyoff"','*');
data_on{1} = fetch(firefly.StatsBehaviour...
    & 'monk_name = "Bruno"'...
    & 'trial_type = "fireflyon"','*');
data_on{2} = fetch(firefly.StatsBehaviour...
    & 'monk_name = "Schro"'...
    & 'trial_type = "fireflyon"','*');
data_on{3} = fetch(firefly.StatsBehaviour...
    & 'monk_name = "Quigley"'...
    & 'trial_type = "fireflyon"','*');
% plot
figure; hold on;
dist2firefly = cell2mat({[data_off{1}.dist2firefly] [data_off{1}.dist2firefly_shuffled] [data_on{1}.dist2firefly] ...
    [data_off{2}.dist2firefly] [data_off{2}.dist2firefly_shuffled] [data_on{2}.dist2firefly] ...
    [data_off{3}.dist2firefly] [data_off{3}.dist2firefly_shuffled] [data_on{3}.dist2firefly]});
trialtype = [repmat({'1'},1,numel([data_off{1}.dist2firefly]))...
    repmat({'2'},1,numel([data_off{1}.dist2firefly_shuffled]))...
    repmat({'3'},1,numel([data_on{1}.dist2firefly]))...
    repmat({'4'},1,numel([data_off{2}.dist2firefly]))...
    repmat({'5'},1,numel([data_off{2}.dist2firefly_shuffled]))...
    repmat({'6'},1,numel([data_on{2}.dist2firefly]))...
    repmat({'7'},1,numel([data_off{3}.dist2firefly]))...
    repmat({'8'},1,numel([data_off{3}.dist2firefly_shuffled]))...
    repmat({'9'},1,numel([data_on{3}.dist2firefly]))];
violinplot(dist2firefly,trialtype);
% axis labels and title
ylim([0 250]); hline(60,'k');
set(gca,'XTick',[],'YTick',0:100:200,'YTicklabel',0:2);
ylabel('Stopping distance (m)');

%% area under the curve
data_off{1} = fetch(firefly.StatsBehaviour...
    & 'monk_name = "Bruno"'...
    & 'trial_type = "fireflyoff"','*');
data_off{2} = fetch(firefly.StatsBehaviour...
    & 'monk_name = "Schro"'...
    & 'trial_type = "fireflyoff"','*');
data_off{3} = fetch(firefly.StatsBehaviour...
    & 'monk_name = "Quigley"'...
    & 'trial_type = "fireflyoff"','*');
% plot
figure; hold on;
