function amag = accelerate(F1,F2,m)
F=F1+F2;
a=F./m;
amag=sqrt(sum(a.^2));
end
