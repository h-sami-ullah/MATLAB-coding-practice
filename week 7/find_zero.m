function x = find_zero(f,x1,x2)
tolerancelevel = 1e-10;
    if(f(x1)==0)
        x=x1;
        return
    elseif(f(x2)==0)
        x=x2;
        return
    else
        while tolerancelevel < abs((x2-x1)/2)
        x3= mean([x1,x2]);
        if(f(x3)==0)
            x=x3;
            return    
        elseif(f(x1)*f(x3)>0)
            x1=x3;
        elseif(f(x1)*f(x3)<0)
            x2=x3;
        end
        x = x3;
        end
    end
end