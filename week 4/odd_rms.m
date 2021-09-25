function orms=odd_rms(nn)
 sum=(nn*(2*nn+1)*(2*nn-1))/3;%%%%% series sum
 orms=sqrt(sum/nn);%%%average and sqrt
end