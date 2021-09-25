function out = year2016(m)
if(length(m)==1 && rem(m,1)==0 && m>=1 && m<=12)
    VN = datenum([2016,m,1]):datenum([2016,m+1,1])-1;
DN = 1+mod(VN-3,7);
MC = {'January';'February';'March';'April';'May';'June';'July';'August';'September';'October';'November';'December'};
DC = {'Mon','Tue','Wed','Thu','Fri','Sat','Sun'};
o={0;0;0;0;0;0;0;0;0;0;0;0};
if(m==0 || m==-1) 
out = struct('day',DC(DN),'date',num2cell(1:numel(VN)));
end
if(m~=0 && isreal(m) && rem(m,1)==0 && m>0 && m<=12)
out = struct('day',DC(DN),'date',num2cell(1:numel(VN)));
    [out(:).month] = deal(MC{m});    
else
    [out(:).month]=deal(o{1});

end
else
    m=0;
        VN = datenum([2016,m,1]):datenum([2016,m+1,1])-1;
DN = 1+mod(VN-3,7);
MC = {'January';'February';'March';'April';'May';'June';'July';'August';'September';'October';'November';'December'};
DC = {'Mon','Tue','Wed','Thu','Fri','Sat','Sun'};
o={0;0;0;0;0;0;0;0;0;0;0;0};
if(m==0 || m==-1) 
out = struct('day',DC(DN),'date',num2cell(1:numel(VN)));
end
if(m~=0 && isreal(m) && rem(m,1)==0 && m>0 && m<=12)
out = struct('day',DC(DN),'date',num2cell(1:numel(VN)));
    [out(:).month] = deal(MC{m});    
else
    [out(:).month]=deal(o{1});

end
    
end