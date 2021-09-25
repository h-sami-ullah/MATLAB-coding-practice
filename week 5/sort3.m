function [out1,out2,out3]=sort3(v)

    if v(1) <=v(2) && v(2)<=v(3);
    out1=v(1)
    out2=v(2)
    out3=v(3)
    elseif v(1)<=v(3) && v(3)<=v(2);
    out1=v(1)
    out2=v(3)
    out3=v(2)
    elseif v(3)<=v(1) && v(1)<=v(2);
    out1=v(3)
    out2=v(1)
    out3=v(2)
    elseif v(2)<=v(1) && v(1)<=v(3);
    out1=v(2)
    out2=v(1)
    out3=v(3)
    elseif v(2)<=v(3) && v(3)<=v(1);
    out1=v(2)
    out2=v(3)
    out3=v(1)
    else
    out1=v(3)
    out2=v(2)
    out3=v(1)
    end