green_color = [10,228,176]/255;
gray_color = [46,53,63]/255;
red_color = [192,0,0]/255;
white_color = [1,1,1];
blue_color = [32, 56, 100]/255;



hold on 
xlim([-0.1 0.5])
ylim([-0.5 1.7])
xlabel('z');
ylabel('x');

dottedx = dotted(:,2);
dottedz = dotted(:,1);

plot(z,x, 'Color', blue_color, 'LineWidth', 2);
plot(period_z, maxx, 'Color', red_color, 'LineWidth', 2, 'LineStyle', '--');
plot(period_z, minx, 'Color', red_color, 'LineWidth', 2, 'LineStyle', '--');

plot(dottedz, dottedx, 'Color', 'white', 'LineWidth', 2, 'LineStyle', '--');

%set(gca,'Color', gray_color)
