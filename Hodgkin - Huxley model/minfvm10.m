function minfvm10 = minfvm10(vml,vm,sm)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
a = (vml - vm) / sm;


minfvm10 = (1 + exp(a))^(-1);
end

