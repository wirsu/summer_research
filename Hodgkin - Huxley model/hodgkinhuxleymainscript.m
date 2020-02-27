tspan = [0 100];
y0 = [-10; 0.0; 0.0];
kpmca = 20;
dcell = 10;
vk = -65;
vca = 0;
vml = -27.5;
sm = 12;
ks = 1.25;
fc = 0.001;
gkca = 0.2;
gca = 0.81;
gk = 2.25;
vn = 0;
sn = 8;
taun = 0.03;

acell = pi * dcell ^ 2;
cm = 10^-5 * acell;

alpha = 10^5 * (2 * 9.65 * acell)^(-1);

[t,y] = ode45(@(t,y) main(t, y, kpmca, vk, vca, vml, sm, ks, fc, gkca, gca, gk, vn, sn, taun, cm, alpha), tspan, y0);
plot(t,y(:,1),'-',t,y(:,2),'-',t,y(:,3),'-')
%plot(y(:,3), y(:,1))

title('Solution of Hodgjkin - Huxley Model with ODE45');
xlabel('Time t');
ylabel('Solution y');
legend('y_1','y_2', 'y_3')