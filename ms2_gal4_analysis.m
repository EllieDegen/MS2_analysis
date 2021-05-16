
%% NOTE about determining anaphse
% Determined anaphase by the frame where there was
% space between the first chromosomes that pulled apart
%%

%700 Hz Gt-10
path='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/';
filepath1=[path,filesep,'Gt-10_700Hz/gt10_201215/201215_gt-10_ms2_gal4_C_GFP4F_NC11to14.lif']; % Gt-10 201215. GT 700Hz 1, 7.691567 s
filepath2='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Gt-10_700Hz/gt10_201215_2/201215_gt-10_ms2_gal4_C_GFP4F_NC12to14.lif'; % Gt-10 201215_2. GT 700Hz 2, 7.691081 s
filepath3='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Gt-10_700Hz/gt10_201216/201216_gt-10_ms2_gal4_C_GFP4F_NC12to14.lif'; % Gt-10 201216. GT 700Hz 3, 7.682325 s

%700 Hz HbP2
filepath4='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_700Hz/hbp2_201211/201211_hbP2_ms2_gal4_B_GFP4F_NC11to14.lif'; % HbP2 201211. HB 700Hz 1. % Have to remove frame, 7.69181 s
filepath5='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_700Hz/hbp2_201211_2/201211_hbP2_ms2_gal4_B_GFP4F_NC12to14.lif'; % HbP2 201211_2. HB 700Hz 2, 7.675029 s
filepath6='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_700Hz/hbp2_201213/201213_hbP2_ms2_gal4_B_GFP4F_mit12toNC14.lif'; % HbP2 201213. . HB 700Hz 3, 7.702268 s

%400Hz Kni64
filepath7='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_400Hz/kni64_201214/201214_kni64_ms2_gal4_B_GFP4F_NC11to14_2.lif'; % Kni64 201214. Kni 400Hz 1, 13.31995 s
filepath8='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_400Hz/kni64_201214_2/201214_kni64_ms2_gal4_B_GFP4F_NC11to14.lif'; % Kni64 201214_2. Kni 400Hz 2, 13.301357 s
filepath9='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_400Hz/kni64_201214_3/201214_kni64_ms2_gal4_B_GFP4F_NC12to14.lif'; % Kni64 201214_3. Kni 400Hz 3, 13.30081 s

%700Hz Kni64
filepath10='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_700Hz/kni64_201213/201213_kni64_ms2_gal4_B_GFP4F_NC12to14.lif'; % Kni64 201213, 24:170, 7.686152 s. Kni 700Hz 1
filepath11='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_700Hz/kni64_201213_2/201213_kni64_ms2_gal4_B_GFP4F_NC12to14_2.lif'; % Kni64 201213_2, 24:179, 7.687372 s. Kni 700Hz 2
filepath12='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_700Hz/kni64_201213_3/201213_kni64_ms2_gal4_B_GFP4F_NC11to14.lif'; % Kni64 201213_3, 119:265, 7.694421 s. Kni 700Hz 3
filepath13='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_700Hz/kni64_201216/201216_kni64_ms2_gal4_B_GFP4F_NC12to14.lif'; % Kni64 201216, 28:180,7.683727 s, Kni 700Hz 6
filepath14='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_700Hz/kni64_201216_2/201216_kni64_ms2_gal4_B_GFP4F_met12toNC14.lif'; % Kni64 201216_2, 17:178, 7.690956 s, Kni 700 Hz 7

% 400Hz Gt 
filepath15='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Gt-10_400Hz/201207_gt-10_ms2_gal4_C_GFP4F_NC12to14.lif'; % Gt-10 201207, 12:108, 13.319715 s, Gt 400Hz 1. NOTE: DO NOT ANALYZE. too much nuclear movement

% 200Hz Gt (no overview)
filepath16='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Gt-10_200Hz_noOverview/201124_gt-10_ms2_gal4_C_GFP4F_NC12to14.lif'; % Gt-10 201124, 12:60, 26.212906 s, Gt 200Hz 1

% 200Hz Hb (no overview)
filepath17='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_200Hz_noOverview/201103_hbP2_ms2_gal4_C_GFP4F_NC12to14.lif'; % HbP2 201103, 9:57, 26.205366 s, Hb 200Hz 1, NOTE: tracking really bad

% 200 Hz Kni (no overview)
filepath18='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_200Hz_noOverview/201116_kni64_ms2_gal4_B_GFP4F_NC12to14.lif'; % Kni64 201116, 13:61, 26.22136, Kni 200Hz 1
filepath19='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_200Hz_noOverview/201030_kni64_ms2_gal4_D_GFP4F_NC11to14.lif'; % Kni64 201030, 48:94, 26.198013 s, Kni 200Hz 2

% Glycerin movies
% 700Hz gt
filepath20='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Gt-10_700Hz/gt10_210215/210215_gt-10_ms2_gal_C_GFP4F_NC11to14.lif'; % Gt-10 210215, 106:238, 7.69023 s, Gt 700Hz 4
filepath21='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Gt-10_700Hz/gt10_210216/210216_gt-10_ms2_gal_C_GFP4F_NC12to14_2.lif'; % Gt-10 210216_1, 49:188, 7.6973 s, Gt 700Hz 5
filepath25='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Gt-10_700Hz/gt10_210322/210322_gt-10_ms2_gal_A_GFP4F_NC12to14.lif'; % Gt-10 2100322, 60:179, 9 s, Gt 700Hz 6
filepath26='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Gt-10_700Hz/gt10_210323/210323_gt-10_ms2_gal_A_GFP4F_NC12to14.lif'; % Gt-10 2100323, 28:140, 10 s, Gt 700Hz 7
filepath27='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Gt-10_700Hz/gt10_210326/210326_gt-10_ms2_gal_A_GFP4F_met12toNC14.lif'; % Gt-10 2100326, 15:118, 10 s, Gt 700Hz 8
filepath30='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Gt-10_700Hz/gt10_210405/210405_gt-10_ms2_gal_B_GFP4F_NC12to14.lif'; % Gt-10 210405, 21:141, 10s, Gt 700Hz 9
filepath31='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Gt-10_700Hz/gt10_210405_2/210405_gt-10_ms2_gal_B_GFP4F_NC12to14_2.lif'; % Gt-10 210405_2, 24:171, 10s, Gt 700Hz 10
filepath32='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Gt-10_700Hz/gt10_210406/210406_gt-10_ms2_gal_B_GFP4F_met12toNC14.lif'; % Gt-10 210406,15:155, 10s, Gt 700Hz 11
filepath33='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Gt-10_700Hz/gt10_210406_2/210406_gt-10_ms2_gal_B_GFP4F_NC12to14.lif'; % Gt-10 210406_2,25:150, 10s, Gt 700Hz 12
filepath34='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Gt-10_700Hz/gt10_210408/210408_gt-10_ms2_gal_B_GFP4F_NC12to14.lif'; % Gt-10 210408, 46:173, 10s, Gt 700Hz 13

% 700Hz hb 
filepath22='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_700Hz/hbp2_210211/210211_hbP2_ms2_gal4_A_GFP4F_NC10to14.lif'; % hbp2 210211, 196:345, 7.692297 s, hb 700Hz 4     (actually this one is oil)
filepath35='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_700Hz/hbp2_210407/210407_hbP2_ms2_gal_BC_GFP4F_NC12to14.lif'; % hbp2 210407, 32:166, 10 s, hb 700Hz 5
filepath36='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_700Hz/hbp2_210407_2/210407_hbP2_ms2_gal_BC_GFP4F_met12toNC14.lif'; % hbp2 210407_2, 11:141, 10 s, hb 700Hz 6
filepath37='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_700Hz/hbp2_210407_3/210407_hbP2_ms2_gal_BC_GFP4F_NC12to14_2.lif'; % hbp2 210407_3, 28:155, 10 s, hb 700Hz 7
filepath38='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_700Hz/hbp2_210409/210409_hbP2_ms2_gal_BC_GFP4F_met12toNC14.lif'; % hbp2 210409,16:155, 10 s, hb 700Hz 8
filepath40='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_700Hz/hbp2_210426/210426_hbP2_ms2_gal_B_GFP4F_met12toNC14.lif'; % hbp2 210426,11:135, 10 s, hb 700Hz 9
filepath41='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_700Hz/hbp2_210427/210427_hbP2_ms2_gal_B_GFP4F_NC11to14.lif'; % hbp2 210427,98:217, 10 s, hb 700Hz 10
filepath42='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_700Hz/hbp2_210427_2/210427_hbP2_ms2_gal_B_GFP4F_NC12to14.lif'; % hbp2 210427_2,73:202, 10 s, hb 700Hz 11
filepath43='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_700Hz/hbp2_210502/210502_hbP2_ms2_gal_B_GFP4F_NC11to14.lif'; % hbp2 210502,137:266, 10 s, hb 700Hz 12
filepath44='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_700Hz/hbp2_210503/210503_hbP2_ms2_gal_B_GFP4F_met12toNC14.lif'; % hbp2 210503,16:141, 10 s, hb 700Hz 13
filepath45='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_700Hz/hbp2_210413/210413_hbP2_ms2_gal_B_GFP4F_NC12to14.lif'; % hbp2 210413,29:128, 10 s, hb 700Hz 14
filepath50='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_700Hz/hbp2_210511/210511_hbP2_ms2_gal_B_GFP4F_NC12to14.lif'; % hbp2 210511,78:196, 10 s, hb 700Hz 15
filepath51='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/HbP2_700Hz/hbp2_210511_2/210511_hbP2_ms2_gal_B_GFP4F_met12toNC14.lif'; % hbp2 210511,13:132, 10 s, hb 700Hz 16

% 700Hz Kni
filepath23='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_700Hz/kni64_210211/210211_kni64_ms2_gal_B_GFP4F_NC12to14.lif'; % kni64 210211,72:210, 7.691567 s, kni 700Hz 4
filepath24='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_700Hz/kni64_210213/210213_kni64_ms2_gal_B_GFP4F_met12to14.lif'; % kni64 210213,19:168, 7.698501 s, kni 700Hz 5
filepath28='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_700Hz/kni64_210322/210322_kni64_ms2_gal_B_GFP4F_NC11to14.lif'; % Kni64 210322,97:227, 9 s, Kni 700 Hz 8
filepath29='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_700Hz/kni64_210330/210330_kni64_ms2_gal_B_GFP4F_met12toNC14.lif'; % Kni64 210330,11:122, 10 s, Kni 700 Hz 9
filepath39='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_700Hz/kni64_210408/210408_kni64_ms2_gal_B_GFP4F_NC12to14.lif'; % Kni64 210408,29:165, 10 s, Kni 700 Hz 10
filepath46='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_700Hz/kni64_210419/210419_kni64_ms2_gal_B_GFP4F_met12toNC14.lif'; % Kni64 210419,14:123, 10 s, Kni 700 Hz 11
filepath47='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_700Hz/kni64_210420/210420_kni64_ms2_gal_B_GFP4F_met11toNC14.lif'; % Kni64 210420,87:198, 10 s, Kni 700 Hz 12
filepath48='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_700Hz/kni64_210420_2/210420_kni64_ms2_gal_B_GFP4F_NC12to14.lif'; % Kni64 210420_2,30:154, 10 s, Kni 700 Hz 13
filepath49='/Users/ellie/Documents/MATLAB/Ellie/MS2_Gal4/Kni64_700Hz/kni64_210512/210512_kni_ms2_gal_B_GFP4F_met12toNC14.lif'; % Kni64 210512,10:121, 10 s, Kni 700 Hz 14

filepaths={filepath1 filepath2 filepath3 filepath4 filepath5 filepath6 filepath7 filepath8 filepath9 filepath10 filepath11 filepath12 ...
    filepath13 filepath14 filepath15 filepath16 filepath17 filepath18 filepath19,filepath20, filepath21 filepath22 filepath23 filepath24...
    filepath25,filepath26,filepath27,filepath28,filepath29,filepath30,filepath31,filepath32,filepath33,filepath34,filepath35,filepath36,...
    filepath37,filepath38,filepath39,filepath40,filepath41,filepath42,filepath43,filepath44,filepath45,filepath46,filepath47,filepath48,...
    filepath49,filepath50,filepath51};
% movienames={'Gt-10 201215','Gt-10 201215_2','Gt-10 201216','HbP2 201211','HbP2 201211_2','HbP2 201213','Kni64 201214',...
%     'Kni64 201214_2','Kni64 201214_3','Kni64 201213','Kni64 201213_2','Kni64 201213_3','Kni64 201216','Kni64 201216_2',...
%     'Gt-10 201207','Gt-10 201124','HbP2 201103','Kni64 201116','Kni64 201030','Gt-10 210215','Gt-10 210216_1'};
NC13bounds={[123 273],[23 169],[38 173],[114 276],[28 166],[5 159],[80 166],[70 156],[13 107],[24 170],[24 179],[119 265],...
    [28 180],[17 178],[12 108],[12 60],[9 57],[13 61],[48 94],[106 238],[49 188],[196 345], [72 210],[19 168],[60 179],...
    [28,140],[15 118],[97 227],[11 122],[21 141],[24 171],[15 155],[25 150],[46 173],[32 166],[11 141],[28 155],[16 155],[29 165],...
    [11 135],[98 217],[73 202],[137 266],[16 141],[29 128],[14 123],[87 198],[30 154],[10 121],[78 196],[13 132]}; % order of movies same as filepaths
% frameTimes=[7.691567 7.691081 7.682325 7.69181 7.675029 7.702268 13.31995 13.301357 13.30081 7.686152 7.687372 7.694421 7.683727 ...
%     7.690956 13.319715 26.212906 26.205366 26.22136 26.198013 7.69023 7.6973 7.692297 7.691567 7.698501];
i=51; % choose the movie
bounds=NC13bounds{i};

%% Load movie
parameters = build_analysis_parameters_v2(filepaths{i});
movie=load_movie(filepaths{i},parameters); % channel1=ms2, channel2=nuc, channel3=brightfield


%% Create nuclear mask
nucmask = nucSeg4Dglobal(movie.channel2mat(:,:,:,bounds(1):bounds(2)),parameters); %original recommended parameters: smoothSigma = 3; openSphereRad = 7;lowerVolCutoffRad = 15. New 2, 4, 5

%% Set variables
movie.meta.SizeT=size(nucmask,4); % add -1 for gt_700_2
% [movie_analysis]=findSpots(parameters,movie,nucmask,bounds);

% Find ms2 foci
ms2mat=movie.channel1mat(:,:,:,bounds(1):bounds(2)); % add -1 for gt_700_2
hismat=movie.channel2mat(:,:,:,bounds(1):bounds(2)); % add -1 for gt_700_2
meta=movie.meta;
% nucmask=nucmask(:,:,:,1:146); % for gt_700_2
overmeta=movie.overmeta;
overmax=movie.overmax;
lastmax=movie.lastmax;

%% Edit parameters
parameters=theparameters;
% The following 6 lines are for if re-doing the spot finding from existing
% analysis structure

% test=gt_200_1_analysis;
% test=hb_200_1_anlaysis;
% test=kni_200_1_analysis;
% ms2mat=test.ms2;
% nucmask=test.nuclearMask;
% meta=test.metadata;
% test.parameters.DoGsigma1=1;
% test.parameters.DoGsigma2=2; % 2
% test.parameters.excludeFociInPlane=0; %0
% test.parameters.focusIntensityPvalCutoff=0.0005; %0.01 for Hb
% test.parameters.minTotalIntensity=500;% 500 for hb
% test.parameters.minFocusVolRad=1; % 1 for Hb
% parameters=test.parameters;

% parameters.minTotalIntensity=100;  % 100 for gt 700 4 and gt 700 5 and hb 700 4
% parameters.excludeFociInPlane=0;
% parameters.focusIntensityPvalCutoff=0.1; % .1 for gt 700 4 and gt 700 5 and hb 700 4
% parameters.maxFocusVolRad=100;
% parameters.minFocusVolRad=0.5;% .5 for gt 700 4 and gt 700 5 and hb 700 4 and kni 700 5
% parameters.DoGsigma1=1;
% parameters.DoGsigma2=5; % 5 for gt 700 4 and gt 700 5 and hb 700 4 and kni 700 5
%% Run the analysis (find spots)

ms2CE = parameters.contrastEnhanceFunction(ms2mat, ...
    parameters.contrastEnhanceSphereRad);

ms2DOG = parameters.dogFunction(ms2CE, ...
    parameters.DoGsigma1, parameters.DoGsigma2);

% se=strel('disk',2);
% dilated=imdilate(ms2DOG,se);

ms2DOGf = parameters.filterFunction(ms2DOG, nucmask, meta, ...
    parameters.minFocusVolRad, parameters.maxFocusVolRad, ...
    parameters.minFocusPlaneOccupancy, parameters.excludeFociInPlane, ...
    parameters.focusIntensityPvalCutoff, parameters.minTotalIntensity);

% test.ms2DOG=ms2DOG;
% test.ms2Mask=ms2DOGf;
% implay(squeeze(sum(test.ms2Mask,3)))
h=implay(squeeze(sum(ms2DOGf,3)));
set(h.Parent,'Name','p=0.1')

% make an overview movie
check = parameters.checkMovieFunction(meta, ms2DOGf, nucmask, hismat);

%% Create output structure

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

movie_analysis=output;

%% Find AP axis location
overmeta=movie_analysis.overviewMetadata;
overmax=movie_analysis.overviewMax;
meta=movie_analysis.metadata;
lastmax=movie_analysis.lastMax;
parameters=movie_analysis.parameters;

overmeta = parameters.flipCheckFunction({imrotate(overmax,90)}, overmeta);
overmeta = parameters.apAxisFindingFunction(overmax, lastmax, overmeta, meta);

movie_analysis.overviewMetadata=overmeta;

%% Track nuclei. Find ms2 intensity
% No nuclei in frame 53 of HbP2 201211 nucmask (b/c only partial z stack),
% so cut out that frame in the following lines....
% badFrame=53;
% movie_analysis.nuclearMask=cat(4,nucmask(:,:,:,1:badFrame-1),nucmask(:,:,:,badFrame+1:end));
% movie_analysis.ms2Mask=cat(4,ms2DOGf(:,:,:,1:badFrame-1),ms2DOGf(:,:,:,badFrame+1:end));
% movie_analysis.histoneRFP=cat(4,hismat(:,:,:,1:badFrame-1),hismat(:,:,:,badFrame+1:end));
% movie_analysis.ms2=cat(4,ms2mat(:,:,:,1:badFrame-1),ms2mat(:,:,:,badFrame+1:end));
% movie_analysis.segmentationCheckMovie=cat(4,check(:,:,:,1:badFrame-1),check(:,:,:,badFrame+1:end));
% movie_analysis.metadata.SizeT=size(nucmask,4)-1;

% movie_analysis=gt_700_analysis_3; %CHANGE
% overmeta=kni_700Hz_analysis_3.overviewMetadata;
% overmeta=[]; %CHANGE

movie_analysis.parameters.hMin=1;


nucmask=movie_analysis.nuclearMask;
nucmax = projectNuclearMask(nucmask, movie_analysis.parameters.hMin);
n=size(nucmax,3);
means=[];
for j=round(.25*n):round(.75*n)
    stats=regionprops(nucmax(:,:,j)>0); 
    means=[means mean([stats.Area])]; 
end
maxObjSize=1.5*mean(means(means>0));
maxdist=50; % standard: 50

% Could pass NC13 bounds to track_ms2 (uncomment lines in the function)
[trackms2 trackmat labeltrack trackmeta labelmov validTrackIdx ltrack4D trackAP sorted_contin]=track_ms2(movie_analysis,maxdist,maxObjSize,overmeta); 

movie_analysis.tracking.trackms2=trackms2;
movie_analysis.tracking.trackmat=trackmat;
movie_analysis.tracking.labeltrack=labeltrack;
movie_analysis.tracking.trackmeta=trackmeta;
movie_analysis.tracking.labelmov=labelmov;
movie_analysis.tracking.ltrack4D=ltrack4D;
movie_analysis.tracking.validTrackIdx=validTrackIdx;
movie_analysis.tracking.trackAP=trackAP;
movie_analysis.tracking.track_continuousMS2=sorted_contin;


%% Plot tracked ms2 intensity
% frameTime=kni_700_CycleTimes(3);%CHANGE
% frameTime=frameTimes(i);
movietype={' Gt 700Hz'}; %CHANGE

% Heatmap of continuous tracks
figure;
normalizedMS2=sorted_contin./max(sorted_contin(:));
continuous2=normalizedMS2+0.01; 
continuous2(isnan(continuous2))=0;
imagesc(continuous2); 
xlabel('Frames','fontsize',14)
ylabel('Nuclei','fontsize',14)
title(strcat('Normalized MS2 Signal (continuous tracks): ',movietype),'fontsize',14)
cmap = [1 1 1; parula];
colormap(cmap)
caxis([0 max(continuous2(:))]);
colorbar

% Plot ms2 over time trace. Normalize cycle 13 time to unit length
figure;
% normalizedMS2(isnan(normalizedMS2))=0; % set nans to 0

cycleLength=size(normalizedMS2,2);
normFrame=((18*60)/cycleLength);
timepoints=1:normFrame:(18*60);
ms2mean=nanmean(normalizedMS2,1);%should be nanmean!!!
normed=ms2mean./max(ms2mean(:));
plot(timepoints,normed,'linewidth',1.5);
xlabel('Time after the start of anaphase 12 (min)','fontsize',14)
xticks(0:60:(18*60))
xticklabels(0:18)

normplot=struct;
normplot.timepoints=timepoints;
normplot.ms2mean=normed;
movie_analysis.normplot=normplot;

% Save anlaysis for plotting
plot_data=struct;
plot_data.trackms2=movie_analysis.tracking.trackms2;
plot_data.trackAP=movie_analysis.tracking.trackAP;
plot_data.track_continuousMS2=movie_analysis.tracking.track_continuousMS2;

%% Save variables
hb_700_16_normplot=normplot; %CHANGE
hb_700_16_plotdata=plot_data; %CHANGE
hb_700_16_analysis=movie_analysis; %CHANGE
save('hb_700_16_normplot','hb_700_16_normplot','-v7.3') %CHANGE
save('hb_700_16_plotdata','hb_700_16_plotdata','-v7.3') %CHANGE
save('hb_700_16_analysis','hb_700_16_analysis','-v7.3') %CHANGE

%% Plot sorted by AP axis
% figure;
% trackAP2=trackAP+0.001;
% trackAP2(isnan(trackAP2))=0;
% imagesc(trackAP2);
% xlabel('Frames')
% ylabel('Nuclei')
% title('AP Position')
% cmap = [1 1 1; parula];
% colormap(cmap)
% caxis([0 max(trackAP2(:))]);
% colorbar
% title('AP positions of tracks')

% Sort tracks by AP position
meanAP=nanmean(trackAP,2);
tagged_tracks=[meanAP trackms2];
sorted_tagged = sortrows(tagged_tracks,1,'ascend');
sorted_ms2=sorted_tagged(:,2:end);

% Leave out any tracks that have a nan in the "prime time" of ms2
rowmean=nanmean(sorted_ms2,1);
ms2bounds=[min(find(rowmean)) max(find(rowmean))];
cropped=sorted_ms2(:,ms2bounds(1):ms2bounds(2));
colsum=sum(cropped,2);
sorted_contin=sorted_ms2(~isnan(colsum),:);

% Plot sorted ms2 tracks
figure;
norm=sorted_contin./max(sorted_contin(:));
trackms2_2=norm+0.01;
trackms2_2(isnan(trackms2_2))=0;
imagesc(trackms2_2);
xlabel('Frames','fontsize',14)
ylabel('Nuclei','fontsize',14)
title(strcat('Sorted by AP location: ',movietype),'fontsize',14)
cmap = [1 1 1; parula];
colormap(cmap)
caxis([0 max(norm(:))]);
c=colorbar;

% Code for generating white labeled figure for DSI presentation 2.23.19
% c.Color='w';
% ax=gca;
% ax.XColor='w';
% ax.YColor='w';
% set(gca,'Color','k')
% title('Normalized fluorescence of Gt-10 spots','fontsize',18,'color','w')
% xlabel('Frames','fontsize',18)
% ylabel('Nuclei','fontsize',18)

