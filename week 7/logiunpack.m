function X = logiunpack(Matrix)
X = false(numel(Matrix));
for Element_number = 1:numel(Matrix)
    X(Element_number,Matrix{Element_number}) = true;
end
end