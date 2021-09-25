function S = triangle_wave(n)                                      
t = linspace(0, 4*pi, 1001);
S = zeros(size(t));   % Pre-allocation
k = 0:n;              % Not 1:n
for tIndex = 1 : length(t) 
  numerator   = ((-1) .^ k) .* sin(t(tIndex) .* (2 * k + 1));
  denominator = (2 .* k + 1) .^ 2;
  S(tIndex)   = sum(numerator ./ denominator);
end