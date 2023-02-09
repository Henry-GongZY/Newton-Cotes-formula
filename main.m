clear;
clc;

fc = @func;
answer = NewtonCotes(fc,1,3,7);

fprintf('Result=%.64f\n',answer);
fprintf('Diff=%.64f',100 - answer);