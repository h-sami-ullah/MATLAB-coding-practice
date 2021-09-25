function B = maxproduct(A,n)
[r,c] = size(A);
if n>r && n>c
  B = [];                                    % cannot be solved
  return
end
L = [-Inf,0,0,0];                            % [product, home-row, home-col, direction]
for i=1:r                            
  for j=1:c-n+1
    L = check(A(i,j:j+n-1),[i,j,1],L);       % row, right case
  end
end 
for i=1:r-n+1                        
  for j=1:c
    L = check(A(i:i+n-1,j),[i,j,2],L);       % column, down case
  end
end
for i=1:r-n+1
  for j=1:c-n+1
    S=A(i:i+n-1,j:j+n-1);
    L = check(diag(S),[i,j,3],L);            % diagonal, down case
    L = check(diag(flip(S,2)),[i,j,4],L);    % reverse diagonal, down case
  end
end
i=L(2); j=L(3);                              % reconstruct coordinates
switch L(4)                                  
  case 1, B = [ones(n,1)*i,(j:j+n-1)'];      
  case 2, B = [(i:i+n-1)',ones(n,1)*j];
  case 3, B = [(i:i+n-1)',(j:j+n-1)'];
  case 4, B = [(i:i+n-1)',(j+n-1:-1:j)'];
end
end
function L = check(V,d,L)
p = prod(V);
if p>L(1)                                    % if new product larger than any previous
  L = [p,d];                                 % then update product, home and direction 
end  
end