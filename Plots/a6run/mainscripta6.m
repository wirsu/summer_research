green_color = [10,228,176]/255;
gray_color = [46,53,63]/255;
red_color = [192,0,0]/255;
tan_color = [255,230,153]/255;
newgreen_color = [139,193,103]/255;
blue_color = [32, 56, 100]/255;
solution1_color = [5,255,118]/255;

solution3_color = [0,116,52]/255;


%{
%solution1
tspan1 = [0 62];
y01 = [0.163179376782717,0.0185952435802470,-0.0149810069312363];

solution1_color = [5,255,118]/255;

epsi1 = zeros(185,1);

for i = 1:185
    epsi1(i) = 0.03;
end

[t1,y1] = ode45(@main2a6, tspan1, y01);
hold on 
plot3(epsi1,  y1(:,3), y1(:,1), 'Color', solution1_color, 'LineWidth', 1);

%}

%{
%solution2
tspan2 = [0 270];
y02 = [0.904024248722780,0.545410767598022,-0.000425064093061189];


solution3_color = [0,116,52]/255;


epsi2 = zeros(669,1);

for i = 1:669
    epsi2(i) = 0.004;
end

[t2,y2] = ode45(@main2a6, tspan2, y02);
hold on 
plot3(epsi2,  y2(:,3), y2(:,1), 'Color', solution3_color, 'LineWidth', 1);

%}

%{
%solution3
tspan3 = [0 130];
y03 = [0.904024248722780,0.545410767598022,-0.000425064093061189];


solution2_color = [0,176,80]/255;
epsi3 = zeros(365,1);

for i = 1:365
    epsi3(i) = 0.012;
end

[t3,y3] = ode45(@main2a6, tspan3, y03);
hold on 
plot3(epsi3,  y3(:,3), y3(:,1), 'Color', solution2_color, 'LineWidth', 1);

%}



%{%
figure(1)
hold on

plot3(epsi1,  y1(:,3), y1(:,1), 'Color', solution1_color, 'LineWidth', 1);
plot3(epsi2,  y2(:,3), y2(:,1), 'Color', solution3_color, 'LineWidth', 1);
plot3(epsi3,  y3(:,3), y3(:,1), 'Color', solution2_color, 'LineWidth', 1);
%}