%problem day counter
function n = day_counter(year)
%creating a vector for number of days in a month starting January
  days_in_months = [31 28 31 30 31 30 31 31 30 31 30 31];     
  startyrear = 1776;                                       
  y = year - startyrear;                                   % computing number of years since 1776
  % number of days since January 1, 1776:
  ndays = y*365 + ceil(y/4) - floor((year-1)/100) + floor(startyrear/100) + floor((year-1)/2000);
  % if it is a leap year, adjust nbr of days in February to 29; condition for checking a leap year:
  if mod(year,4) == 0 && (mod(year,100) ~= 0 || mod(year,400) == 0)
      days_in_months(2) = 29;
  end
%for previous month
  days_in_months = [0 cumsum(days_in_months(1:end-1))];              
  n = sum(mod(ndays+days_in_months,7) == 0);                  %for Mondays
end