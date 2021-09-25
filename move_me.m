function w = move_me(v,a)
if nargin == 1
    a=0;
end
t=[];
for x=v
    if x==a;
        t=[t a];
    end
end
q=v(v~=a);
w=[q t];
end

