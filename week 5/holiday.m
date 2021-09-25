function d = holiday(month,day)
if month == 1 && day == 1
    d = true;
elseif month == 7 && day == 4
    d = true;   
elseif month == 12 && day == 25
    d = true;
elseif month == 12 && day == 31
    d = true;    
else
d = false;    
end