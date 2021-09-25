function mbd = spherical_mirror_aberr(fn,D)
f=fn*D;
x=(0:0.01:D/2);
y=x/(2*f);
y=asind(y);
i=cosd(y);
i=1./cosd(y);
i=i-1;
w=2*y;
w=tand(w);
r=i.*w;
r=(2*f).*r;
l=sum(x.*r);
mbd=l.*(8*0.01/D^2);
end
