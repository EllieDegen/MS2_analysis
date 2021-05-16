t1=hb_700_1_normplot.timepoints;
m1=hb_700_1_normplot.ms2mean;
t2=hb_700_2_normplot.timepoints; % leave out b/c of spike in fluorescence
m2=hb_700_2_normplot.ms2mean;
t3=hb_700_3_normplot.timepoints;
m3=hb_700_3_normplot.ms2mean;

figure
plot(t1,movmean(m1,20),t2,movmean(m2,20),t3,movmean(m3,20),'linewidth',1.5);
xticks(0:60:(18*60))
xticklabels(0:18)
xlim([0 18*60])
xlabel('Time after the start of anaphase 12 (min)','fontsize',14)
ylabel('Normalized Fluorescence','fontsize',14)
title('HbP2 700 Hz','fontsize',14)
legend('1','2','3')

figure;
test=movmean(m1,20);
dydx = gradient(test(:)) ./ gradient(t1(:));
plot(dydx)
hold on;
test=movmean(m2,20);
dydx = gradient(test(:)) ./ gradient(t2(:));
plot(dydx)
hold on;
test=movmean(m3,20);
dydx = gradient(test(:)) ./ gradient(t3(:));
plot(dydx)

%% Scale data and find mean
n=18*60;
m1_smooth=movmean(m1,20);
m2_smooth=movmean(m2,20);
m3_smooth=movmean(m3,20);
m1_scale=scale(m1,n);
m2_scale=scale(m2,n);
m3_scale=scale(m3,n);
all=[m1_scale;m2_scale;m3_scale];
all_mean=mean(all,1);
all_sd=std(all,1);
t=1:n;

figure;
shadedErrorBar(t,all_mean,all_sd,[0 0.447 0.742])
xticks(0:60:(18*60))
xticklabels(0:18)
xlim([0 18*60])
xlabel('Time after the start of anaphase 12 (min)','fontsize',14)
ylabel('Normalized Fluorescence','fontsize',14)
title('HbP2 MS2, n = 3','fontsize',14)

%% select points for region over which to fit a line (look at ms2 data or derivative plot)
dydx = gradient(all_mean(:)) ./ gradient(t(:));
figure;
% dydx_smooth=movmean(dydx,100);
% plot(dydx_smooth)
% title('Derivative (smoothed)','fontsize',14)
plot(all_mean);

[x,y] = ginput(3); % pick ponts in order of ton, start of window, stop of window
ton=x(1);
start=x(2);
stop=x(3);

%% fit a line 
start=round(start);
stop=round(stop);
t2=1:length(all_mean(start:stop));
line=polyfit(t2,all_mean(start:stop),1);
y_est=polyval(line,t2);

figure(1);
% window=ton:(ton+length(y_est)-1);
window=start:stop;
plot(window,y_est,'-.r','linewidth',1.5)

hold on;
shadedErrorBar(t,all_mean,all_sd,[0 0.447 0.742])
xticks(0:60:(18*60))
xticklabels(0:18)
xlim([0 18*60])
xlabel('Time after the start of anaphase 12 (min)','fontsize',14)
ylabel('Normalized Fluorescence','fontsize',14)
title('HbP2 MS2 (n = 3)','fontsize',14)
ylim([-0.1 1])

% add in arrow for ton
x = [0.4 0.5];
y = [0.4 0.5];
annotation('textarrow',x,y,'String','t_o_n','fontsize',18)
plotedit(figure(1))


%% Scaling function
function scaled = scale(x,n)
    ix = linspace(1, n, numel(x));
    scaled = interp1(ix, x, 1:n);
end