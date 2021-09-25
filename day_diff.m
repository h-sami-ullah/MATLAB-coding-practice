function dd=day_diff(month1,day1,month2,day2)
y=[31,28,31,30,31,30,31,31,30,31,30,31];
a=month1;b=day1;c=month2;d=day2;
if isscalar(a) && isscalar(b) && isscalar(c) && isscalar(d)
if a==fix(a) && b==fix(b) && c==fix(c) && d==fix(d)
if 1<=a && a<=12 && 1<=c && c<=12 && 1<=b && b<=31 && 1<=d && d<=31 ...
        && b<=y(1,a) && d<=y(1,c)
if (a==2 || c==2) && (b==29 || d==29)
    elseif a>c
        x=y(c:a-1);
        x(1,1)=x(1,1)-d;
        dd=sum(x)+b;
    elseif a~=c
        x=y(a:c-1);
        x(1,1)=x(1,1)-b;
        dd=sum(x)+d;
    elseif a==c
        dd=abs(d-b);
else dd=-1;
end
else dd=-1;
end
else dd=-1;
end
else dd=-1;
end
   
   
    