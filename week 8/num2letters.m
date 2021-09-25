function words = number2letters(number)
% calculating integer part number
int_number = floor(number);
words = int2words(int_number);
if int_number ~= number
%% intital words
digitNames = {'zero', 'one', 'two', 'three', 'four', 'five', ...
'six', 'seven', 'eight', 'nine'};
words = [words, ' point'];
  
numStr = sprintf('%.18g', number);
pointPos = find(numStr == '.');
numStr = numStr(pointPos+1:end);
for index = 1:length(numStr)
int_number = str2num(numStr(index));
words = [words, ' ', digitNames{int_number+1}];
end
end
end