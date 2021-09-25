function sum=halfsum(A);
   sum = 0;  
    [row,col] = size(A);%%%%%caculating rows and columns
    for i= 1:row%%%%upto rows 
        for j=1:col%%%upto columns
            if (i+j)>=(row+1)%%%%condition for the sum to implement  
                sum = sum + A(i,j);%%%inital value is the element itself
            end
        end
    end