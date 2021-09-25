function [a,b,c]=sort3(z)
if size(z)==[1 3];
    if z(1,1)<=z(1,2) && z(1,2)<=z(1,3) %r.v:a<b<c
     a=z(1,1);b=z(1,2);c=z(1,3);
    elseif z(1,1)<=z(1,3) && z(1,3)<=z(1,2) %r.v:a<c<b
     a=z(1,1);b=z(1,3);c=z(1,2);
    elseif z(1,2)<=z(1,1) && z(1,1)<=z(1,3) %r.v:b<a<c
     a=z(1,2);b=z(1,1);c=z(1,3);
    elseif z(1,2)<=z(1,3) && z(1,3)<=z(1,1) %r.v:b<c<a
     a=z(1,2);b=z(1,3);c=z(1,1);
    elseif z(1,3)<=z(1,1) && z(1,1)<=z(1,2) %r.v:c<a<b
     a=z(1,3);b=z(1,1);c=z(1,2);
    elseif z(1,3)<=z(1,2) && z(1,2)<=z(1,1) %r.v:c<b<a
     a=z(1,3);b=z(1,2);c=z(1,1);
    end
elseif size(z)==[3 1]
    if z(1,1)<=z(2,1) && z(2,1)<=z(3,1)     %c.v:a<b<c
        a=z(1,1);b=z(2,1);c=z(3,1);
    elseif z(1,1)<=z(3,1) && z(3,1)<=z(2,1) %c.v:a<c<b
        a=z(1,1);b=z(3,1);c=z(2,1);
    elseif z(2,1)<=z(1,1) && z(1,1)<=z(3,1) %c.v:b<a<c
        a=z(2,1);b=z(1,1);c=z(3,1);
    elseif z(2,1)<=z(3,1) && z(3,1)<=z(1,1) %c.v:b<c<a
        a=z(2,1);b=z(3,1);c=z(1,1);
    elseif z(3,1)<=z(1,1) && z(1,1)<=z(2,1) %c.v:c<a<b
        a=z(3,1);b=z(1,1);c=z(2,1);
    elseif z(3,1)<=z(2,1) && z(2,1)<=z(1,1) %c.v:c<b<a
        a=z(3,1);b=z(2,1);c=z(1,1);
    end
end