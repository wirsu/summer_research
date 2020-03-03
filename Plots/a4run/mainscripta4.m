green_color = [10,228,176]/255;
gray_color = [46,53,63]/255;
red_color = [192,0,0]/255;
tan_color = [255,230,153]/255;
newgreen_color = [139,193,103]/255;
blue_color = [32, 56, 100]/255;
solution1_color = [5,255,118]/255;
solution2_color = [0,176,80]/255;
solution3_color = [0,116,52]/255


%{
%solution1
tspan1 = [0 200];
y01 = [-0.0646355773797737,0.00437487510818283,0.00107032026908335];

solution1_color = [5,255,118]/255;

epsi1 = zeros(437,1);

for i = 1:437
    epsi1(i) = 0.007;
end

[t1,y1] = ode45(@main2a4, tspan1, y01);
hold on 
plot3(epsi1,  y1(:,3), y1(:,1), 'Color', solution1_color, 'LineWidth', 1);

%}

%{
%solution2
tspan2 = [0 250];
y02 = [-0.0172883254619792,0.000360045325062027,-0.00152017509552686];

solution2_color = [0,176,80]/255;

epsi2 = zeros(521,1);

for i = 1:521
    epsi2(i) = 0.005;
end

[t2,y2] = ode45(@main2a4, tspan2, y02);
hold on 
plot3(epsi2,  y2(:,3), y2(:,1), 'Color', solution2_color, 'LineWidth', 1);

%}

%{
%solution3
tspan3 = [0 600];
y03 = [-0.116619182145444,0.0137246667521204,0.00893218892869109];

solution3_color = [0,116,52]/255

epsi3 = zeros(1125,1);

for i = 1:1125
    epsi3(i) = 0.003;
end

[t3,y3] = ode45(@main2a4, tspan3, y03);
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