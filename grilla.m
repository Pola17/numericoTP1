function resultado3 = grilla (n, t)
  
  longitud = length(num2str(n));
  
  new = n;
  
  iterator = longitud;
  
  if (iterator > t)
    toCut = n / str2num(factor(iterator - t));
    new = round(toCut);
    iterator = t;
  endif
 
  fc = factor(iterator);
  
  toFloat = new / str2num(fc);

  resultado3 = cstrcat("Resultado: ", num2str(toFloat), " * 10^", num2str(longitud));
  
endfunction