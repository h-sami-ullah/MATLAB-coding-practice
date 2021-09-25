function out = small_elements(v)
out = [];%%%%empty array
a=0;

[r,c] = size(v);%%%size of matrix
for j = 1:c%%%upto columns
  for i = 1:r%%%upto rwos
      if v(i,j) < i*j;%%%condition if element is smaller then the product of row and column
          a = a+1;%%%%0+1 ,1+1,2+1 and so on
          out = [out; i j];            
      end
    end
end