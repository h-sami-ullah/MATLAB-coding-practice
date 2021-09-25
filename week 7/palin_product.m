function [n] = palin_product(dig,lim)

   UL = (10^dig) - 1
   LL = 10^(dig - 1)
   abc = UL: -1: LL;
   n = 0;
   list = [];
   prolist = [];
%set up number of iterations and blank lists to fill in
%
for x = 1:numel(abc) 
  n = n+1;
    yy = abc(n) * abc;
    list = [list yy];
end
for y = 1:length(list)
    forward = num2str(list(y));
    backward = forward(end:-1:1);
    if forward == backward;
        prolist = [prolist list(y)];
        %this should form a list of only the palindromes...a 'prolist'
    end
end
under_limit = prolist < lim

final_list = prolist(under_limit)
%the final list to choose the largest palindrome from 
n = max(final_list)
if isempty(n) 
    n = 0
   
end