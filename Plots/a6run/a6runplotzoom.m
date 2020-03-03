green_color = [10,228,176]/255;
gray_color = [46,53,63]/255;
%red_color = [192,0,0]/255;
red_color = [255,64,97]/255;
tan_color = [255,230,153]/255;
newgreen_color = [139,193,103]/255;
blue_color = [32, 56, 100]/255;

%scurvelog(1:1999,1:1) = 0.0001;
scurveperiodlog(1:338,1:1) =  0.001;
scurveperiodlog2(1:338,1:1) =  0.001;

scurvelog(1:445,1:1) = 0.001;
scurvelog2(1:2000 ,1:1) = 0.001;
scurvelog3(1:1554 , 1:1) = 0.001;

linewidth1 = 2.5;
linewidth2 = 2;


hold on
%scurve
plot3(epsi_scurve_unstable ,z_scurve_unstable, x_scurve_unstable, 'LineWidth', linewidth1, 'Color', green_color, 'LineStyle', '--');
%plot3(scurvelog ,z_scurve_unstable, x_scurve_unstable, 'LineWidth', 1.5, 'Color', blue_color, 'LineStyle', '--');

plot3(epsi_scurve_stable1 ,z_scurve_stable1, x_scurve_stable1, 'LineWidth', linewidth1, 'Color', green_color);
%plot3(scurvelog2 ,z_scurve_stable1, x_scurve_stable1, 'LineWidth', 1.5, 'Color', blue_color);

plot3(epsi_scurve_stable2 ,z_scurve_stable2, x_scurve_stable2, 'LineWidth', linewidth1, 'Color', green_color);
%plot3(scurvelog3 ,z_scurve_stable2, x_scurve_stable2, 'LineWidth', 1.5, 'Color', blue_color);
%scurve

%fpcurve
plot3(epsi_fpcurve_unstable ,z_fpcurve_unstable, x_fpcurve_unstable, 'LineWidth', linewidth1, 'Color', green_color, 'LineStyle', '--');

plot3(epsi_fpcurve_stable ,z_fpcurve_stable, x_fpcurve_stable, 'LineWidth', linewidth1, 'Color', green_color);
%fpcurve

%hccurve
plot3(epsi_hccurve_stable_max ,z_hccurve_unstable_max, x_hccurve_unstable_max, 'LineWidth', linewidth1, 'Color', red_color);
%plot3(scurveperiodlog ,z_hccurve_unstable_max, x_hccurve_unstable_max, 'LineWidth', 1.5, 'Color', red_color);

plot3(epsi_hccurve_stable_max ,z_hccurve_unstable_max, x_hccurve_unstable_min, 'LineWidth', linewidth1, 'Color', red_color);
%plot3(scurveperiodlog2 ,z_hccurve_unstable_max, x_hccurve_unstable_min, 'LineWidth', 1.5, 'Color', red_color);
%hccurve

%pdbranch1
plot3(epsi_pd1_stable1, z_pd1_stable1, x_pd1_stable1_max, 'LineWidth', linewidth2, 'Color', red_color);
plot3(epsi_pd1_stable1, z_pd1_stable1, x_pd1_stable1_min, 'LineWidth', linewidth2, 'Color', red_color);

plot3(epsi_pd1_unstable1, z_pd1_unstable1, x_pd1_unstable1_max, 'LineWidth', linewidth2, 'Color', red_color, 'LineStyle', '--');
plot3(epsi_pd1_unstable1, z_pd1_unstable1, x_pd1_unstable1_min, 'LineWidth', linewidth2, 'Color', red_color, 'LineStyle', '--');
%pdbranch1 

%pdbranch2
plot3(epsi_pd2_stable1, z_pd2_stable1, x_pd2_stable1_max, 'LineWidth', linewidth2, 'Color', red_color);
plot3(epsi_pd2_stable1, z_pd2_stable1, x_pd2_stable1_min, 'LineWidth', linewidth2, 'Color', red_color);

plot3(epsi_pd2_unstable1, z_pd2_unstable1, x_pd2_unstable1_max, 'LineWidth', linewidth2, 'Color', red_color, 'LineStyle', '--');%
plot3(epsi_pd2_unstable1, z_pd2_unstable1, x_pd2_unstable1_min, 'LineWidth', linewidth2, 'Color', red_color, 'LineStyle', '--');
%pdbranch2 

%pdbranch3
plot3(epsi_pd3_stable1, z_pd3_stable1, x_pd3_stable1_max, 'LineWidth', linewidth2, 'Color', red_color, 'LineStyle', '--');
plot3(epsi_pd3_stable1, z_pd3_stable1, x_pd3_stable1_min, 'LineWidth', linewidth2, 'Color', red_color, 'LineStyle', '--');

plot3(epsi_pd3_unstable1, z_pd3_unstable1, x_pd3_unstable1_max, 'LineWidth', linewidth2, 'Color', red_color, 'LineStyle', '- -');
plot3(epsi_pd3_unstable1, z_pd3_unstable1, x_pd3_unstable1_min, 'LineWidth', linewidth2, 'Color', red_color, 'LineStyle', '- -');
%pdbranch3 

%pdbranch4
plot3(epsi_pd4_stable1, z_pd4_stable1, x_pd4_stable1_max, 'LineWidth', linewidth2, 'Color', red_color, 'LineStyle', '--');
plot3(epsi_pd4_stable1, z_pd4_stable1, x_pd4_stable1_min, 'LineWidth', linewidth2, 'Color', red_color, 'LineStyle', '--');

plot3(epsi_pd4_unstable1, z_pd4_unstable1, x_pd4_unstable1_max, 'LineWidth', linewidth2, 'Color', red_color, 'LineStyle', '--');
plot3(epsi_pd4_unstable1, z_pd4_unstable1, x_pd4_unstable1_min, 'LineWidth', linewidth2, 'Color', red_color, 'LineStyle', '--');
%pdbranch4 

%pdbranch5
plot3(epsi_pd5_unstable1, z_pd5_unstable1, x_pd5_unstable1_max, 'LineWidth', linewidth2, 'Color', red_color, 'LineStyle', '- -');
plot3(epsi_pd5_unstable1, z_pd5_unstable1, x_pd5_unstable1_min, 'LineWidth', linewidth2, 'Color', red_color, 'LineStyle', '- -');
%pdbranch5 




%set(gca,'XScale', 'log')
set(gca,'Color',gray_color);
set(gcf,'color',gray_color)


xlim([0 0.05])
ylim([-0.06 0.06])
zlim([-0.2 1.1])

xlabel(' \textbf{$\varepsilon$} ','interpreter','latex')
ylabel('z')
zlabel('x')

view(3);