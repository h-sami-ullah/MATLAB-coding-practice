function [approx_e, k] = approximate_e (delta)
% Set the variables for the while loop.
k = 0;
fact = 1;
approx_e=1;
while abs(approx_e - exp(1)) > delta
%  The counter k is necesary for factorial calculus. If you put it after
%  the approx_e, it will add an addional number since the condition will be
%  reevaluated.
  k=k+1;
% For factorial calculus one could use: 
% fact = fact * (1/k) or prod([1 : n]) 
% fact and approx_e is calculated to recursive method.
  fact = fact * (1/k);
  approx_e = approx_e + fact; 
end
approx_e;
k;
end