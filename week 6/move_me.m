function w=move_me(v,a)
if ~exist('a','var')
    a=0;
end
w=[v(v~=a) v(v==a)];
end