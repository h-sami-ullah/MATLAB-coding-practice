function out = spiral_diag_sum(n)
    A = 3:2:n 
    out = 1 + sum( 4*A.^2 - 6*(A-1)) % The formula "f(n) = 4n^2-6(n-1)+f(n-2)"
    end