function total=fare(d,a)
d=round(d);
if a<=60 && a>=18 && d==1 || d<1 || d==1.00
   total=2;
end   
if a<=60 && a>=18 && d<=10 && d>1
    total=((d-1)*0.25)+2;
end
if a<=60 && a>=18 && d>10
    b=d-10;
    total=(b*0.10)+4.25;
end
if (a<=18 || a>=60) && (d==1 || d<1 || d==1.00)
    z=2*0.20;
    total=2-z;
end
if (a<=18 || a>=60) && d<=10 && d>1
    c=((d-1)*0.25)+2;
    v=c*0.20;
    total=c-v;
end
if (a<=18 || a>=60) && d>10
    g=d-10;
    h=(g*0.10)+4.25;
    j=h*0.20;
    total=h-j;
end
end
    
    
    
    
     
