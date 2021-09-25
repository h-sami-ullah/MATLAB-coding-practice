function [product1,ind]=max_product(a,b)
    try
        [product1, ind] = max(prod(hankel(a(1:end-b+1),a(end-b+1:end)),2));
    catch
        product1 = 0;
        ind = -1;
    end
end