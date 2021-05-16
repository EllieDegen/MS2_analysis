function [output]=findSpots(parameters,movie,nucmask,bounds)
% Find ms2 foci
ms2mat=movie.channel1mat(:,:,:,bounds(1):bounds(2));
hismat=movie.channel2mat(:,:,:,bounds(1):bounds(2));
meta=movie.meta;
meta.SizeT=size(nucmask,4);
overmeta=movie.overmeta;
overmax=movie.overmax;
lastmax=movie.lastmax;

ms2CE = parameters.contrastEnhanceFunction(ms2mat, ...
    parameters.contrastEnhanceSphereRad);

ms2DOG = parameters.dogFunction(ms2CE, ...
    parameters.DoGsigma1, parameters.DoGsigma2);

ms2DOGf = parameters.filterFunction(ms2DOG, nucmask, meta, ...
    parameters.minFocusVolRad, parameters.maxFocusVolRad, ...
    parameters.minFocusPlaneOccupancy, parameters.excludeFociInPlane, ...
    parameters.focusIntensityPvalCutoff, parameters.minTotalIntensity);


% make an overview movie
check = parameters.checkMovieFunction(meta, ms2DOGf, nucmask, hismat);

output = struct;
output.analysisDate = datetime;
output.parameters = parameters;
output.metadata = meta;
output.overviewMetadata = overmeta;
output.overviewMax = overmax;
output.lastMax = lastmax;
output.nuclearMask = nucmask;
output.ms2Mask = ms2DOGf;
output.segmentationCheckMovie = check;
output.histoneRFP = hismat;
output.ms2 = ms2mat;

end