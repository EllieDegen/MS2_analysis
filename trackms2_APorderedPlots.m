% Plot ms2 signal ordered by AP location of nuclei

% sizeT = size(trLabel, 4);
% APmat = NaN(length(validTrackIdx), sizeT);
% h = waitbar(0);
% 
% for t = 1:size(trLabel, 4)
%     waitbar(t/size(trLabel,4), h)
%     L = trLabel(:,:,:,t);
%     for i = 1:length(validTrackIdx)
%         pixels = find(L == validTrackIdx(i));
%         if ~isempty(pixels)
% %             objInt = mean(img(pixels)); % Old code just averages
% %             intensity in nuclei
%             stats=regionprops(L== validTrackIdx(i));
%             if length(stats)==1
%                 centroid = round(stats(1).Centroid);
%                 pos=overmeta.ROI_APMatrix(centroid(2),centroid(1));
%                 APmat(i,t) = pos;
%                 pos
%             end
%         end
%     end
% end
% 
% close(h)

%% Plots
trackAP=hb_700_1_anlaysis.tracking.trackAP;
trackms2=hb_700_1_anlaysis.tracking.trackms2;
figure;
trackAP2=trackAP+0.001;
trackAP2(isnan(trackAP2))=0;
imagesc(trackAP2);
xlabel('Frames')
ylabel('Nuclei')
title('AP Position')
cmap = [1 1 1; parula];
colormap(cmap)
caxis([0 max(trackAP2(:))]);
colorbar
title('AP positions of tracks')

% Sort tracks by AP position. Exclude tracks where position not determined
% (all NaNs in a row)?
meanAP=mean(trackAP,2);
tagged_tracks=[meanAP trackms2];
sorted_tagged = sortrows(tagged_tracks,1,'ascend');
% sorted_tagged2=sorted_tagged(~isnan(sorted_tagged(:,1)),:);
% sorted_ms2=sorted_tagged2(:,2:end);
sorted_ms2=sorted_tagged(:,2:end);

% Plot sorted ms2 tracks
figure;
norm=sorted_ms2./max(sorted_ms2(:));
trackms2_2=norm+0.01;
% trackms2_2=sorted_tagged2+50;
trackms2_2(isnan(trackms2_2))=0;
imagesc(trackms2_2);
xlabel('Frames')
ylabel('Nuclei')
title('Relative Nuclear Intensity')
cmap = [1 1 1; parula];
colormap(cmap)
caxis([0 max(norm(:))]);
colorbar



%     locs=NaN(size(trackms2,1),1);
%     locs(locatedTracks)=allAPs; % have to think about this...
%     tagged_tracks=[locs trackms2];
%     sorted_tagged = sortrows(tagged_tracks,1,'ascend');
%     sorted_tagged2=sorted_tagged(~isnan(sorted_tagged(:,1)),:);
%     sorted_ms2=sorted_tagged2(:,2:end);
%     
%     figure;
%     trackms2_2=sorted_ms2+5;
%     trackms2_2(isnan(trackms2_2))=0;
%     imagesc(trackms2_2);
%     xlabel('Frames')
%     ylabel('Nuclei')
%     title('Relative Nuclear Intensity')
%     cmap = [1 1 1; parula];
%     colormap(cmap)
%     caxis([0 max(trackms2(:))]);
%     colorbar
% end


% Code to extract relevant data for plotting from saved structures

% gt700_LT_3=gt_700Hz_analysis_3.tracking.labeltrack;
% gt700_trackms2_3=gt_700Hz_analysis_3.tracking.trackms2;
% gt700_overmeta_3=gt_700Hz_analysis_3.overviewMetadata;
% 
% gt200_LT_1=gt_200Hz_analysis_1.tracking.labeltrack;
% gt200_trackms2_1=gt_200Hz_analysis_1.tracking.trackms2;
% gt200_overmeta_1=gt_200Hz_analysis_1.overviewMetadata;
% 
% kni700_LT_1=kni_700Hz_analysis_1.tracking.labeltrack;
% kni700_trackms2_1=kni_700Hz_analysis_1.tracking.trackms2;
% kni700_overmeta_1=kni_700Hz_analysis_1.overviewMetadata;