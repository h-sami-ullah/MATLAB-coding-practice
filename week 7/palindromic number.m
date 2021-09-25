function [n] = palin_product(dig,lim)
%What does the function do?
%a palindromic number = reads same both ways (eg 1001)
%the largest palindrome made from the product of two 2-digit numbers is
%9009 = 91 x 99.
%This function has to return the largest palindrome smaller than 'lim' that
%is the product of two 'dig' digit numbers 
%(eg if dig = 2, then the highest possible 2 dig numbers are 99 x 99)
%If no such number exists, the function returns 0
   UL = (10^dig) - 1
   LL = 10^(dig - 1)
%UL is the largest 'dig' digit number (upper limit)
%LL is the lower limit of a 'dig' digit number: = 10^(dig-1)
%example: if 'dig' = 2 --> the numbers to check are 10-99
%ie 10^(2-1) = 10  to (10^2)-1 = 99
   c = UL: -1: LL;
%this is a list of all the 'dig' digit numbers to check
%ie for 2 digit numbers would be 10-99
%Future hint:
%to verify a palindrome: 
%will need to use c = num2str(__) 
%and see if it is equal to itself read in reverse by using c(end:-1:1) 
   n = 0;
   list = [];
   plist = [];
%set up number of iterations and blank lists to fill in
%
for x = 1:numel(c) 
%to get all possible products: we will have to multiply each individual number in the vector by every number in the vector (the whole vector)
  n = n+1;
   yy = c(n) * c;
    %multiply (*) (not .*) the n'th element of row vector c by all other values
    %then put this into a new row vector
    list = [list yy];
    %this should form a row vector of ALL possible 'dig' digit products
end
for y = 1:length(list)
    forward = num2str(list(y));
    backward = forward(end:-1:1);
    if forward == backward;
        plist = [plist list(y)];
        %this should form a list of only the palindromes...a 'plist'
    end
end
under_lim = plist < lim
%this gives a logical (0 or 1) row vector of all the plist indices (palindrome
%list) that are under the limit
final_list = plist(under_lim)
%the final list to choose the largest palindrome from 
n = max(final_list)
if isempty(n) 
    n = 0
    %accounts for if there is NOT a palindrome that is less than the limit inputted
end