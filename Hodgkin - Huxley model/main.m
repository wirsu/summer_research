function dydt = main(t, y, kpmca, vk, vca, vml, sm, ks, fc, gkca, gca, gk, vn, sn, taun, cm, alpha)
%UNTITLED17 Summary of this function goes here
%   Detailed explanation goes here
dydt = zeros(3,1);

dydt(1) = (-1 / cm) * (icavm7(gca, vml, sm, y(1), vca) + ikvmn8(gk, y(2), y(1), vk) + ikcavmc9(gkca, y(3), ks, y(1), vk));
dydt(2) = (ninfvm11(vn, y(1) ,sn) - y(2)) / taun;
dydt(3) = -fc *( alpha * icavm7(gca, vml, sm, y(1), vca) + kpmca * y(3)); 
end

