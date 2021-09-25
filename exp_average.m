function out = exp_average(in,a)
persistent tou;
persistent b;
if nargin==1 && isempty(tou)
    b=0.1;
    tou=in;
    out=tou;
end
if nargin==1 && ~isempty(tou)
    tou=(b*in)+((1-b)*tou);
    out=tou;
end
if nargin==2
    b=a;
    tou=in;
    out=tou;
end
end
    