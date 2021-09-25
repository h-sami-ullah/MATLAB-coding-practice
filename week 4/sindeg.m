function [sine,avg]=sindeg(deg)
rad=(pi/180).*deg;
sine=sin(rad);
b=size(sine);
number=b(1)*b(2);
avg=sum(sum(sine))/number;
end