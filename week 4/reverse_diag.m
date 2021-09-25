function a=reverse_diag(n)
a=zeros(n);
b=1:n;
a(n^2-b*n+b)=ones(1);
end