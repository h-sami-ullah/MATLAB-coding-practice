function out_dig = dial(inp_string)
  characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  digits = '012345678922233344455566677778889999';
  if sum(~ismember(inp_string,characters))>0
        out_dig = uint64(0);
        return;
  else
      [~,idb] = ismember(inp_string,characters);
      out_dig = sscanf(digits(idb),'%lu');
  end
end
