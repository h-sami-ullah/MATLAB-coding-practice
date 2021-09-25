%function: digit_counter in a file; takes file name as argument
function dc = digit_counter(file_name)
  dc=-1;
  file_id= fopen(file_name,'r');
  if file_id>=0
      dc= nnz(isstrprop(fileread(file_name),'digit'));
      fclose(file_id);
  end
end