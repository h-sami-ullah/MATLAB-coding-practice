function percentage=zero_stat(a)
[b1,b2]=size(a);
b=b1*b2;
number_of_ones=sum(sum(a));
percentage=(b-number_of_ones)*100/b;
end