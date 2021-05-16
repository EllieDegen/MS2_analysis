function [trackInt trackAP] = getObjTrackIntensity(trLabel, intmat, validTrackIdx, overmeta)
%   GETOBJTRACKINTENSITY returns intensity over time for individual tracked
%   nuclei. Rows index track number. Columns index time tracked.
%
%        TRLABEL : 4D (y,x,z,t) track labelled matrix (see labelTrack4D.m)
%        INTMAT : intensity matrix from the channel you wish to measure
%        VALIDTRACKIDX : index of tracks for which to calculate intensity

sizeT = size(trLabel, 4);
trackInt = NaN(length(validTrackIdx), sizeT);
trackAP = NaN(length(validTrackIdx), sizeT);

h = waitbar(0);

for t = 1:size(trLabel, 4)
    waitbar(t/size(trLabel,4), h)
    L = trLabel(:,:,:,t);
    img = intmat(:,:,:,t);
    for i = 1:length(validTrackIdx)
        pixels = find(L == validTrackIdx(i));
        if ~isempty(pixels)
%             objInt = mean(img(pixels)); % Old code just averages
%             intensity in nuclei

            if sum(img(pixels)>0)>0 % new code beginning
                nucleus=img(pixels);
                spot=nucleus(nucleus>0);
                objInt=sum(spot(:)); % Find sum of ms2 signal in spot volume
            else
                objInt=0;
            end         
            trackInt(i,t) = objInt;
            
            % Calculate the AP position of the object in the track
            if length(overmeta)>0
                stats=regionprops(L== validTrackIdx(i));
                if length(stats)==1
                    centroid = round(stats(1).Centroid);
                    pos=overmeta.ROI_APMatrix(centroid(2),centroid(1));
                    trackAP(i,t) = pos;
                end % new code ending
            end
        end
    end
end

close(h);

end


