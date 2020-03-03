function dydt = main2a7(t , y)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
dydt = zeros(3,1);

s = -2.6;
b1 = -0.21;
epsilon = 0.6;


a = 0.5;
b = 1;
a1 = -0.1;
k = 0.2;
phi = 1;

dydt(1) = s * a * y(1)^3 - s * y(1)^2 - y(2) - b * y(3);
dydt(2) = phi * ( y(1)^2 - y(2) );
dydt(3) = epsilon * (s * a1 * y(1) + b1 - k * y(3));
end

