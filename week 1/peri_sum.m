function [A]=peri_sum(A)
A = sum(A(:,end))+sum(A(:,1))+sum(A(1,2:end-1))+sum(A(end,2:end-1));
end