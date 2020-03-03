green_color = [10,228,176]/255;
gray_color = [46,53,63]/255;
red_color = [192,0,0]/255;
tan_color = [255,230,153]/255;
newgreen_color = [139,193,103]/255;
blue_color = [32, 56, 100]/255;

%scurvelog(1:1999,1:1) = 0.0001;
scurveperiodlog(1:1000,1:1) =  0.002;
scurveperiodlog2(1:1000,1:1) =  0.002;

scurvelog1(1:1000,1:1) = 0.002;
scurvelog2(1:81 ,1:1) = 0.002;
scurvelog3(1:549 , 1:1) = 0.002;
scurvelog4(1:261, 1:1) = 0.002; 
scurvelog5(1:107, 1:1) = 0.002; 

figure(2)
hold on
%scurve
%plot3(epsi_scurve_stable1 ,z_scurve_stable1, x_scurve_stable1, 'LineWidth', 1.5, 'Color', blue_color);
plot3(scurvelog1 ,z_scurve_stable1, x_scurve_stable1, 'LineWidth', 1.25, 'Color', blue_color);

%plot3(epsi_scurve_stable2 ,z_scurve_stable2, x_scurve_stable2, 'LineWidth', 1.5, 'Color', blue_color);
plot3(scurvelog2 ,z_scurve_stable2, x_scurve_stable2, 'LineWidth', 1.25, 'Color', blue_color);

%plot3(epsi_scurve_stable3 ,z_scurve_stable3, x_scurve_stable3, 'LineWidth', 1.5, 'Color', blue_color, 'LineStyle', '--');
plot3(scurvelog3 ,z_scurve_stable3, x_scurve_stable3, 'LineWidth', 1.25, 'Color', blue_color);

%plot3(epsi_scurve_unstable ,z_scurve_unstable, x_scurve_unstable, 'LineWidth', 1.5, 'Color', blue_color, 'LineStyle', '--');
plot3(scurvelog4 ,z_scurve_unstable1, x_scurve_unstable1, 'LineWidth', 1.25, 'Color', blue_color, 'LineStyle', '--');

%plot3(epsi_scurve_unstable2 ,z_scurve_unstable2, x_scurve_unstable2, 'LineWidth', 1.5, 'Color', blue_color, 'LineStyle', '--');
plot3(scurvelog5 ,z_scurve_unstable3, x_scurve_unstable3, 'LineWidth', 1.25, 'Color', blue_color, 'LineStyle', '--');


%scurve

%fpcurve
plot3(epsi_fpcurve_unstable ,z_fpcurve_unstable, x_fpcurve_unstable, 'LineWidth', 1.25, 'Color', blue_color, 'LineStyle', '--');

plot3(epsi_fpcurve_stable ,z_fpcurve_stable, x_fpcurve_stable, 'LineWidth', 1.25, 'Color', blue_color);
%fpcurve

%hccurve
%plot3(epsi_hccurve_stable_max ,z_hccurve_stable_max, x_hccurve_stable_max, 'LineWidth', 1.5, 'Color', red_color);
plot3(scurveperiodlog ,z_hccurve_stable_max, x_hccurve_stable_max, 'LineWidth', 1.25, 'Color', red_color);

%plot3(epsi_hccurve_stable_max ,z_hccurve_stable_max, x_hccurve_stable_min, 'LineWidth', 1.5, 'Color', red_color);
plot3(scurveperiodlog2 ,z_hccurve_stable_max, x_hccurve_stable_min, 'LineWidth', 1.25, 'Color', red_color);
%hccurve



%snpcurve2
plot3(epsi_snpcurve_stable ,z_snpcurve_stable, x_snpcurve_stable_max, 'LineWidth', 1, 'Color', red_color);

plot3(epsi_snpcurve_stable ,z_snpcurve_stable, x_snpcurve_stable_min, 'LineWidth', 1, 'Color', red_color);
%snpcurve2


set(gca,'XScale', 'log')


xlim([0.002 0.5])
ylim([-0.08 0.13])
zlim([-0.4 1.25])

xlabel(' \textbf{$\varepsilon$} ','interpreter','latex')
ylabel('z')
zlabel('x')

view(3);