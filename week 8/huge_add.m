%problem huge add
function output = huge_add(a,b)
  if ~ischar(a) || ~ischar(b) || sum(isstrprop(a,'digit')) ~= length(a) || ...
          sum(isstrprop(b,'digit')) ~= length(b)
      output = -1;
      return;
  end
  maxlng = max([length(a) length(b)]);
  a = [a(end:-1:1) '0'+zeros(1,maxlng-length(a))];   % flip and pad with zeros if necessary
  b = [b(end:-1:1) '0'+zeros(1,maxlng-length(b))];   % flip and pad with zeros if necessary
  carry = 0;
  for ii = 1:maxlng
      c = carry + str2num(a(ii)) + str2num(b(ii)) % add the digits plus the caryy
      carry = c > 9;                              % is there carry? (0 or 1)
      output(ii) = num2str(mod(c,10));             % put the character in the result
  end
  if carry
      output(end+1) = '1';                         % need a leading 1 if carry
  end
  output = output(end:-1:1);                        % flip it back
end