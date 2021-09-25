function [typ] = integerize(A)
if A >= intmin('int8') & A <= intmax('int8')
    typ = 'int8';
elseif A >= intmin('int16') & A <= intmax('int16')
    typ = 'int16';
elseif A >= intmin('int32') & A <= intmax('int32')
    typ = 'int32';
elseif A >= intmin('int64') & A <= intmax('int64')
    typ = 'int64';
else
    typ = 'NONE';
end
end