function [a,b]=fence(lng,seg) 
   at=lng/seg;
    a= ceil(at);
    b=a+1;
end