
% NOTE leave out kni 700 2
colors={[0, 0.4470, 0.7410],[0.4940, 0.1840, 0.5560],[0.8500, 0.3250, 0.0980]};
%% 200Hz plot
t1=gt_200_1_normplot.timepoints;
m=gt_200_1_normplot.ms2mean;
m1=(m-min(m(:)))./max(m(:));

t2=hb_200_1_normplot.timepoints;
m2=hb_200_1_normplot.ms2mean;

t3=kni_200_1_normplot.timepoints;
m3=kni_200_1_normplot.ms2mean;

t4=kni_200_2_normplot.timepoints;
m4=kni_200_2_normplot.ms2mean;

figure;
plot(t1,m1,'linewidth',1.5,'color',colors{1})
hold on;
plot(t2,m2,'linewidth',1.5,'color',colors{2});
hold on;
plot(t3,m3,'linewidth',1.5,'color',colors{3})
xlabel('Time after the start of anaphase 12 (min)','fontsize',14)
ylabel('Normalized Fluorescence','fontsize',14)
title('Average MS2 signal in tracked nuclei: 200 Hz','fontsize',14)
legend('Gt-10','HbP2','Kni64')
xticks(0:60:(18*60))
xticklabels(0:18)
xlim([0 18*60])

%% 400Hz plot
t5=kni_400_1_normplot.timepoints;
m5=kni_400_1_normplot.ms2mean;

t6=kni_400_2_normplot.timepoints;
m6=kni_400_2_normplot.ms2mean;

t7=kni_400_3_normplot.timepoints;
m7=kni_400_3_normplot.ms2mean;

figure;
plot(t5,m5,'linewidth',1.5,'color',colors{3})
hold on;
plot(t6,m6,'linewidth',1.5,'color',.8.*colors{3})
hold on;
plot(t7,m7,'linewidth',1.5,'color',.3.*colors{3})
xlabel('Time after the start of anaphase 12 (min)','fontsize',14)
ylabel('Normalized Fluorescence','fontsize',14)
title('Average MS2 signal in tracked nuclei: 400 Hz','fontsize',14)
legend('Kni64_1','Kni64_2','Kni64_3')
xticks(0:60:(18*60))
xticklabels(0:18)
xlim([0 18*60])
%% 700 Hz plot
% Gt
figure;
t8=gt_700_1_normplot.timepoints;
m8=gt_700_1_normplot.ms2mean;
t9=gt_700_2_normplot.timepoints;
m9=gt_700_2_normplot.ms2mean;
t10=gt_700_3_normplot.timepoints;
m10=gt_700_3_normplot.ms2mean;
t11=gt_700_4_normplot.timepoints;
m11=gt_700_4_normplot.ms2mean;
t12=gt_700_5_normplot.timepoints;
m12=gt_700_5_normplot.ms2mean;
t24=gt_700_6_normplot.timepoints;
m24=gt_700_6_normplot.ms2mean;
t25=gt_700_7_normplot.timepoints;
m25=gt_700_7_normplot.ms2mean;
t26=gt_700_8_normplot.timepoints;
m26=gt_700_8_normplot.ms2mean;
t29=gt_700_9_normplot.timepoints;
m29=gt_700_9_normplot.ms2mean;
t30=gt_700_10_normplot.timepoints;
m30=gt_700_10_normplot.ms2mean;
t31=gt_700_11_normplot.timepoints;
m31=gt_700_11_normplot.ms2mean;
t32=gt_700_12_normplot.timepoints;
m32=gt_700_12_normplot.ms2mean;
t33=gt_700_13_normplot.timepoints;
m33=gt_700_13_normplot.ms2mean;


subplot(1,3,1)
plot(t8,m8,t9,m9,t10,m10,t11,m11,t12,m12,t24,m24,t25,m25,t26,m26,t29,m29,t30,m30,t31,m31,t32,m32,t33,m33,'linewidth',1.5);
xticks(0:60:(18*60))
xticklabels(0:18)
xlim([0 18*60])
xlabel('Time after the start of anaphase 12 (min)','fontsize',14)
ylabel('Normalized Fluorescence','fontsize',14)
title('Gt-10 700 Hz','fontsize',14)

% Hb
t13=hb_700_1_normplot.timepoints;
m13=hb_700_1_normplot.ms2mean;
t14=hb_700_2_normplot.timepoints;
m14=hb_700_2_normplot.ms2mean;
t15=hb_700_3_normplot.timepoints;
m15=hb_700_3_normplot.ms2mean;
t16=hb_700_4_normplot.timepoints;
m16=hb_700_4_normplot.ms2mean;
t34=hb_700_5_normplot.timepoints;
m34=hb_700_5_normplot.ms2mean;
t35=hb_700_6_normplot.timepoints;
m35=hb_700_6_normplot.ms2mean;
t36=hb_700_7_normplot.timepoints;
m36=hb_700_7_normplot.ms2mean;
t37=hb_700_8_normplot.timepoints;
m37=hb_700_8_normplot.ms2mean;

subplot(1,3,2)
plot(t13,m13,t14,m14,t15,m15,t16,m16,t34,m34,t35,m35,t36,m36,t37,m37,'linewidth',1.5);
xticks(0:60:(18*60))
xticklabels(0:18)
xlim([0 18*60])
xlabel('Time after the start of anaphase 12 (min)','fontsize',14)
ylabel('Normalized Fluorescence','fontsize',14)
title('HbP2 700 Hz','fontsize',14)
hold on;

% Kni
t17=kni_700_1_normplot.timepoints;
m17=kni_700_1_normplot.ms2mean;
t18=kni_700_2_normplot.timepoints;
m18=kni_700_2_normplot.ms2mean;
t19=kni_700_3_normplot.timepoints;
m19=kni_700_3_normplot.ms2mean;
t20=kni_700_4_normplot.timepoints;
m20=kni_700_4_normplot.ms2mean;
t21=kni_700_5_normplot.timepoints;
m21=kni_700_5_normplot.ms2mean;
t22=kni_700_6_normplot.timepoints;
m22=kni_700_6_normplot.ms2mean;
t23=kni_700_7_normplot.timepoints;
m23=kni_700_7_normplot.ms2mean;
t27=kni_700_8_normplot.timepoints;
m27=kni_700_8_normplot.ms2mean;
t28=kni_700_9_normplot.timepoints;
m28=kni_700_9_normplot.ms2mean;
t38=kni_700_10_normplot.timepoints;
m38=kni_700_10_normplot.ms2mean;

subplot(1,3,3)
plot(t17,m17,t18,m18,t19,m19,t20,m20,t21,m21,t22,m22,t23,m23,t27,m27,t28,m28,t38,m38,'linewidth',1.5);
xticks(0:60:(18*60))
xticklabels(0:18)
xlim([0 18*60])
xlabel('Time after the start of anaphase 12 (min)','fontsize',14)
ylabel('Normalized Fluorescence','fontsize',14)
title('KniKH 700 Hz','fontsize',14)

%% Plot averages of 700Hz ms2 data
n=18*60;
t=1:n;

% Gt mean
gt=[scale(m9,n);scale(m10,n);scale(m11,n);scale(m12,n);scale(m24,n);scale(m25,n);scale(m26,n);...
    scale(m29,n);scale(m30,n);scale(m31,n);scale(m32,n);scale(m33,n)]; % left out m8
gtmean=mean(gt,1);
gtsd=std(gt,1);

% Hb mean
hb=[scale(m13,n);scale(m14,n);scale(m15,n);scale(m16,n);scale(m34,n);scale(m35,n);scale(m36,n);scale(m37,n)];
hbmean=mean(hb,1);
hbsd=std(hb,1);

% Kni mean
kni=[scale(m17,n);scale(m19,n);scale(m20,n);scale(m21,n);scale(m22,n);scale(m27,n);scale(m28,n);scale(m38,n)]; % left out m18 and m23
knimean=mean(kni,1);
knisd=std(kni,1);

figure;
shadedErrorBar(t,gtmean,gtsd,[0 0.447 0.742])
hold on;
shadedErrorBar(t,hbmean,hbsd,[0.4940, 0.1840, 0.5560])
hold on;
shadedErrorBar(t,knimean,knisd,[0.8500, 0.3250, 0.0980])
xticks(0:60:(18*60))
xticklabels(0:18)
xlim([0 18*60])
l=legend('Gt-10','HbP2','KniKH');
l.FontSize=14;
title('Average MS2 Signal','fontsize',14)
xlabel('Time after the start of anaphase 12 (min)','fontsize',14)
ylabel('Normalized Fluorescence','fontsize',14)

%% Smoothed plots for DSI presentation
figure;
plot(t8,m8,'linewidth',1.5,'color',colors{1});
xticks(0:60:(18*60))
xticklabels(0:18)
xlim([0 18*60])
xlabel('Time after the start of anaphase 12 (min)','fontsize',26)
ylabel('Normalized Fluorescence','fontsize',26)
title('Gt-10 (low affinity?)','fontsize',26,'color','w')
ax=gca;
ax.XColor='w';
ax.YColor='w';
set(gca,'Color','k')

figure;
plot(t9,m9,t10,m10,t11,m11,'linewidth',1.5,'color',colors{2});
xticks(0:60:(18*60))
xticklabels(0:18)
xlim([0 18*60])
xlabel('Time after the start of anaphase 12 (min)','fontsize',26)
ylabel('Normalized Fluorescence','fontsize',26)
title('HbP2 (medium affinity?)','fontsize',26,'color','w')
ax=gca;
ax.XColor='w';
ax.YColor='w';
set(gca,'Color','k')

figure;
plot(t12,m12,t13,m13,'linewidth',1.5,'color',colors{3});
xticks(0:60:(18*60))
xticklabels(0:18)
xlim([0 18*60])
xlabel('Time after the start of anaphase 12 (min)','fontsize',26)
ylabel('Normalized Fluorescence','fontsize',26)
title('KniKH (high affinity?)','fontsize',26,'color','w')
ax=gca;
ax.XColor='w';
ax.YColor='w';
set(gca,'Color','k')

%% Scaling function
function scaled = scale(x,n)
    scaled = interp1(1:length(x), x, linspace(1,length(x),n));
    
%     ix = linspace(1, n, numel(x));
%     scaled = interp1(ix, x, 1:n);
end
