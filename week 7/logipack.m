function Output = logipack2(M)
[row, column] = size(M);
Output = cell(row,1);
for i = 1:row
    vector = [];
    for j = 1:column 
        if M(i, j) == 1
            vector = [vector j]; %add the value of j to the vector, could also use find
        end
    end
    Output{i} = vector; %after j loop, put vector into i
end