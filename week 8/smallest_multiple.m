%alternative solution to smallest multiple
function output = smallest_multiple(k) 
  output = uint64(1);
  for n = 1:k
      output = output * (n / gcd(output,n));   
  end
  if output == intmax('uint64')
     output = uint64(0);
  end
end