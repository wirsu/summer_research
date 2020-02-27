function ikcavmc9 = ikcavmc9(gkca, c, ks,  vm, vk)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here

ikcavmc9 = gkca * sinfc12(c, ks) * (vm - vk);
end

