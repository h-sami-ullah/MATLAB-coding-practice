function dd=day_diff(m1,d1,m2,d2)
      num_of_days=[31,28,31,30,31,30,31,31,30,31,30,31];
      dd=-1;
      mmm1=round(m1);mmm2=round(m2);ddd1=round(d1);ddd2=round(d2);
      if(isscalar(d1)&&isscalar(d2)&&isscalar(m1)&&isscalar(m2))
       if(d1-ddd1 || d2-ddd2 || m1-mmm1 || m2-mmm2)
             dd=-1;
       else
         if (m1<1||m1>12||m2<1||m2>12)
                  dd=-1;
              else
                  if(d1>num_of_days(m1) || d2>num_of_days(m2) || d1<1 || d2<1)
                      dd=-1;
                  else
                      dd1=sum(num_of_days(1:m1));
                      dd1=dd1+d1-num_of_days(m1);
                      dd2=sum(num_of_days(1:m2));
                      dd2=dd2+d2-num_of_days(m2);
                      if(dd1>=dd2)
                          dd=dd1-dd2;
                      else
                          dd=dd2-dd1;
                      end
                  end
         end
       end        
    end