green_color = [10,228,176]/255;
gray_color = [46,53,63]/255;
%red_color = [192,0,0]/255;
red_color = [255,64,97]/255;
tan_color = [255,230,153]/255;
newgreen_color = [139,193,103]/255;
blue_color = [32, 56, 100]/255;

%scurvelog(1:1999,1:1) = 0.0001;
scurveperiodlog(1:484,1:1) =  0.001;
scurveperiodlog2(1:484,1:1) =  0.001;

scurvelog(1:923,1:1) = 0.001;
scurvelog2(1:1000 ,1:1) = 0.001;
scurvelog3(1:77 , 1:1) = 0.001;

linewidth1 = 2.5;
linewidth2 = 2;

figure(2)
hold on
%scurve
plot3(epsi_scurve_unstable ,z_scurve_unstable, x_scurve_unstable, 'LineWidth', linewidth1, 'Color', green_color, 'LineStyle', '--');
%plot3(scurvelog ,z_scurve_unstable, x_scurve_unstable, 'LineWidth', 1.25, 'Color', blue_color, 'LineStyle', '--');

plot3(epsi_scurve_stable1 ,z_scurve_stable1, x_scurve_stable1, 'LineWidth', linewidth1, 'Color', green_color);
%plot3(scurvelog2 ,z_scurve_stable1, x_scurve_stable1, 'LineWidth', 1.25, 'Color', blue_color);

plot3(epsi_scurve_stable2 ,z_scurve_stable2, x_scurve_stable2, 'LineWidth', linewidth1, 'Color', green_color);
%plot3(scurvelog3 ,z_scurve_stable2, x_scurve_stable2, 'LineWidth', 1.25, 'Color', blue_color);
%scurve

%fpcurve
plot3(epsi_fpcurve_unstable ,z_fpcurve_unstable, x_fpcurve_unstable, 'LineWidth', linewidth1, 'Color', green_color, 'LineStyle', '--');

plot3(epsi_fpcurve_stable ,z_fpcurve_stable, x_fpcurve_stable, 'LineWidth', linewidth1, 'Color', green_color);
%fpcurve

%hccurve
plot3(epsi_hccurve_unstable_max ,z_hccurve_unstable_max, x_hccurve_unstable_max, 'LineWidth', linewidth1, 'Color', red_color, 'LineStyle', '--');
%plot3(scurveperiodlog ,z_hccurve_unstable_max, x_hccurve_unstable_max, 'LineWidth', 1.25, 'Color', red_color, 'LineStyle', '--');

plot3(epsi_hccurve_unstable_max ,z_hccurve_unstable_max, x_hccurve_unstable_min, 'LineWidth', linewidth1, 'Color', red_color, 'LineStyle', '--');
%plot3(scurveperiodlog2 ,z_hccurve_unstable_max, x_hccurve_unstable_min, 'LineWidth', 1.25, 'Color', red_color, 'LineStyle', '--');

%hccurve

%snpcurve
plot3(epsi_snpcurve_unstable ,z_snpcurve_unstable, x_snpcurve_unstable_max, 'LineWidth',  linewidth2, 'LineStyle', '--', 'Color', red_color);

plot3(epsi_snpcurve_unstable ,z_snpcurve_unstable, x_snpcurve_unstable_min, 'LineWidth', linewidth2,  'LineStyle', '--', 'Color', red_color);
%snpcurve

%snpcurve2
plot3(epsi_snpcurve_stable ,z_snpcurve_stable, x_snpcurve_stable_max, 'LineWidth', linewidth2, 'Color', red_color);

plot3(epsi_snpcurve_stable ,z_snpcurve_stable, x_snpcurve_stable_min, 'LineWidth', linewidth2, 'Color', red_color);
%snpcurve2


%set(gca,'XScale', 'log')
set(gca,'Color',gray_color);
set(gcf,'color',gray_color)

xlim([0 0.12])
ylim([-0.1 0.8])
zlim([-0.8 1.8])

xlabel(' \textbf{$\varepsilon$} ','interpreter','latex')
ylabel('z')
zlabel('x')

view(3);