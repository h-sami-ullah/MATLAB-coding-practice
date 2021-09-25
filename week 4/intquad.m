function [Q]=intquad(n,m)
Q=zeros(2*n,2*m);
Q(1:n,m+1:end)=ones(n,m);
Q(n+1:end,1:m)=2.*ones(n,m);
Q(n+1:end,m+1:end)=3.*ones(n,m);
end