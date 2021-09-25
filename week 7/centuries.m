function cent = centuries (year)
 if  ~isscalar(year) || year<1 || year>3000 || year~=fix(year)
    cent = '';
 else
    romancount = {'I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII','XIII','XIV','XV','XVI','XVII','XVIII','XIX','XX','XXI','XXII','XXIII','XXIV','XXV','XXVI','XXVII','XXVIII','XXIX','XXX'};
    cent = romancount{ceil(year/100)};
 end