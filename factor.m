function result = factor (iterator)

  aux = '1';

  for i = 1:iterator
    aux = strcat(aux, '0');
  endfor  
  
  result = str2num(aux);
  
endfunction