function income=income(rate,price)
onehour=rate*price';
income=sum(48*2.*onehour);
end
%%%Write a function called income that takes two row vectors of the same length as input arguments.
%%%The first vector, rate contains the number of various products a company manufactures per hour
%%%5simultaneously. The second vector, price includes the corresponding per item price they sell the
%%%5given product for. The function must return the overall income the company generates in a week
%%%assuming a 6-day work week and two 8-hour long shifts per day.