function [trackms2 trackmat labeltrack trackmeta mov validTrackIdx ltrack4D trackAP track_continuousMS2]=track_ms2(analysis_struct,max_dist,maxObjSize,overmeta)
fprintf('Tracking nuclei ... \n')

intmat=analysis_struct.ms2Mask.*double(analysis_struct.ms2);
% intmat=intmat(:,:,:,NC13bounds(1):NC13bounds(2));
nucmask=analysis_struct.nuclearMask;
% nucmask=nucmask(:,:,:,NC13bounds(1):NC13bounds(2));
hMin=analysis_struct.parameters.hMin;
nucmax = projectNuclearMask(nucmask, hMin);

% %% Track
% fprintf('Tracking nuclei ... \n')
% 
% [trackmat,~,trackmeta] = trackNuclei(nucmax,max_dist);
% labeltrack = labelTrack(trackmat, nucmax);
% 
% %% Filter track
% fprintf('Filtering tracks by size and duration ... \n')
% 
% minObjSize = 0;
% % maxObjSize = 700; %originally 400. 600 or 500? for NC13 nuclei
% minTrackLife = 10; %10
% 
% trackmeta.minObjSize=minObjSize;
% trackmeta.maxObjSize=maxObjSize;
% trackmeta.minTrackLife=minTrackLife;
% 
% validTrackIdx = filterTrack(trackmat, labeltrack, minObjSize, maxObjSize, minTrackLife);
% filtTrackIdx = setdiff(1:size(trackmat,1), validTrackIdx);
% 
% temp = labeltrack; 
% for i = 1:length(filtTrackIdx)
%     temp(labeltrack == filtTrackIdx(i)) = NaN;
% end
% labeltrack = temp;
% 
% % track stats
% sumtrack = sum(trackmat, 2, 'omitnan');
% nTrack = sum(sumtrack(validTrackIdx));
% nOmit = sum(sumtrack(filtTrackIdx));
% percTrack = round((nTrack / (nTrack + nOmit)) * 100);
% fprintf('%d %% of all objects tracked after filtering \n', percTrack);
% 
% 
% %% Color label nuclei by track
% fprintf('Preparing labelled track movie... \n')
% 
% shuffle_cmap = 1;
% mov = track2rgb(labeltrack, shuffle_cmap);
% implay(mov)
% 
% %% Get intensities values for each tracked nucleus
% fprintf('Calculating intensity for each track ... \n')
% 
% ltrack4D = labelTrack4D(labeltrack, nucmask); % converts label matrix to 4D
% trackms2 = zeros(length(validTrackIdx), size(nucmask,4));
% [trackms2 trackAP] = getObjTrackIntensity(ltrack4D, intmat, validTrackIdx, overmeta);
% 
% 
% %% Heatmap of intensity over time
% % 
% % figure;
% % imagesc(trackms2);
% % xlabel('Frames')
% % ylabel('Nuclei')
% % title('Relative MS2 Intensity')
% % 
% % figure; 
% % plot(trackms2', 'Color', [0.2, 0.4, 0.7, 0.2])
% % 
% % figure;
% % plot(nanmean(trackms2,1),'linewidth',1.5);
% % ylabel('Time after the start of anaphase 12','fontsize',14)
% 
% %% Misc
% 
% fprintf('Done! \n')
% end

%% Track
fprintf('Tracking nuclei ... \n')

trackmat = trackNuclei(nucmax,max_dist);
labeltrack = labelTrack(trackmat, nucmax);

%% Filter track
fprintf('Filtering tracks by size and duration ... \n')

minObjSize = 0;
minTrackLife = 0; % don't filter out any tracks here, wait until end

trackmeta.minObjSize=minObjSize;
trackmeta.maxObjSize=maxObjSize;
trackmeta.minTrackLife=minTrackLife;

validTrackIdx = filterTrack(trackmat, labeltrack, minObjSize, maxObjSize, minTrackLife);
filtTrackIdx = setdiff(1:size(trackmat,1), validTrackIdx);

labeltrack_orig=labeltrack; % save labels if don't want to do filtering
temp = labeltrack; 
for i = 1:length(filtTrackIdx)
    temp(labeltrack == filtTrackIdx(i)) = NaN;
end
labeltrack = temp;

% track stats
sumtrack = sum(trackmat(~isnan(trackmat))>0, 2, 'omitnan');
nTrack = sum(sumtrack(validTrackIdx));
nOmit = sum(sumtrack(filtTrackIdx));
percTrack = round((nTrack / (nTrack + nOmit)) * 100);
fprintf('%d %% of all objects tracked after filtering \n', percTrack);

% % Ellie's altered Track stats
% sumtrack = sum(trackmat, 2, 'omitnan');
% nTrack = sum(sumtrack(validTrackIdx));
% nOmit = sum(sumtrack(filtTrackIdx));
% percTrack = round((nTrack / (nTrack + nOmit)) * 100);
% fprintf('%d %% of all objects tracked after filtering \n', percTrack);

%% Color label nuclei by track
fprintf('Preparing labelled track movie... \n')

shuffle_cmap = 1;
mov = track2rgb(labeltrack, shuffle_cmap);
implay(mov)

%% Get intensities values for each tracked nucleus
fprintf('Calculating intensity for each track ... \n')

ltrack4D = labelTrack4D(labeltrack, nucmask); % converts label matrix to 4D
trackms2 = zeros(length(validTrackIdx), size(nucmask,4));
[trackms2 trackAP] = getObjTrackIntensity(ltrack4D, intmat, validTrackIdx, overmeta);


%% Heatmaps of intensity over time

figure;
trackms2_2=trackms2+10;
trackms2_2(isnan(trackms2_2))=0;
imagesc(trackms2_2);
xlabel('Frames')
ylabel('Nuclei')
title('Relative Nuclear Intensity')
cmap = [1 1 1; parula];
colormap(cmap)
caxis([0 max(trackms2(:))]);
colorbar

figure; 
plot(trackms2', 'Color', [0.2, 0.4, 0.7, 0.2])
%% Misc

% Leave out any tracks that have a nan in the "prime time" of ms2
rowmean=nanmean(trackms2,1);
% figure;plot(rowmean)
ms2bounds=[min(find(rowmean)) max(find(rowmean))];
cropped=trackms2(:,ms2bounds(1):ms2bounds(2));
colsum=sum(cropped,2);
track_continuousMS2=trackms2(~isnan(colsum),:);

figure;
continuous2=(track_continuousMS2./max(track_continuousMS2(:)))+0.01; % 0.007 for gt, 0.005 for hb and kni
continuous2(isnan(continuous2))=0;
imagesc(continuous2);
xlabel('Frames')
ylabel('Nuclei')
title('MS2 Signal (continuous tracks)')
cmap = [1 1 1; parula];
colormap(cmap)
caxis([0 max(continuous2(:))]);
colorbar


fprintf('Done! \n')
end
