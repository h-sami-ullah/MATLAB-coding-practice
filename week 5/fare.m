function [TF]=fare(D,A)
D=round(D);
if(D<=1)
    FR=2;
     if(A<=17||A>=60)
        TF=(FR-(FR/5))
    else
        TF=FR
     end
elseif(D>1&&D<=10)
    FR=2+(D-1)*(.25);
     if(A<=18||A>=60)
        TF=(FR-(FR/5))
    else
        TF=FR
     end
else
    FR=2+(9*.25)+(D-10)*(.10);
    if(A<=18||A>=60)
        TF=(FR-(FR/5))
    else
        TF=FR
    end
      end