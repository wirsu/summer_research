function icavm7 = icavm7(gca, vml, sm, vm, vca)
%UNTITLED14 Summary of this function goes here
%   Detailed explanation goes here



icavm7 = gca * (minfvm10(vml,vm,sm))^2 * (vm - vca);
end

