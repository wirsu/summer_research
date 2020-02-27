function ninfvm11 = ninfvm11(vn,vm,sn)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
a = exp((vn - vm) / sn);

ninfvm11 = (1 + a)^(-1);
end

