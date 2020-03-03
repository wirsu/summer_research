green_color = [10,228,176]/255;
gray_color = [46,53,63]/255;
red_color = [192,0,0]/255;
tan_color = [255,230,153]/255;
newgreen_color = [139,193,103]/255;
blue_color = [32, 56, 100]/255;
solution1_color = [5,255,118]/255;
solution2_color = [0,176,80]/255;
solution3_color = [0,116,52]/255;


%{
%solution1
tspan1 = [0 50];
y01 = [1.40706392018764,1.61730916559513,0.163025530479482];

solution1_color = [5,255,118]/255;

epsi1 = zeros(329,1);

for i = 1:329
    epsi1(i) = 0.9;
end

[t1,y1] = ode45(@main2a7, tspan1, y01);
hold on 
plot3(epsi1,  y1(:,3), y1(:,1), 'Color', solution1_color, 'LineWidth', 1);

%}

%{
%solution2
tspan2 = [0 50];
y02 = [1.09273420738456,0.813054098605732,0.144671236317019];

solution2_color = [0,176,80]/255;

epsi2 = zeros(293,1);

for i = 1:293
    epsi2(i) = 0.6;
end

[t2,y2] = ode45(@main2a7, tspan2, y02);
hold on 
plot3(epsi2,  y2(:,3), y2(:,1), 'Color', solution2_color, 'LineWidth', 1);

%}

%{
%solution3
tspan3 = [0 70];
y03 = [-0.255850719249870,0.0947890806676738,0.0602376603335511];

solution3_color = [0,116,52]/255;

epsi3 = zeros(305,1);

for i = 1:305
    epsi3(i) = 0.25;
end

[t3,y3] = ode45(@main2a7, tspan3, y03);
hold on 
plot3(epsi3,  y3(:,3), y3(:,1), 'Color', solution3_color, 'LineWidth', 1);

%}


%{%
figure(1)
hold on

plot3(epsi1,  y1(:,3), y1(:,1), 'Color', solution1_color, 'LineWidth', 1);
plot3(epsi2,  y2(:,3), y2(:,1), 'Color', solution2_color, 'LineWidth', 1);
plot3(epsi3,  y3(:,3), y3(:,1), 'Color', solution3_color, 'LineWidth', 1);
%}