function resultado3 = grilla (n, t)
  
  iterator = length(num2str(n));
  
  new = n;
  
  if (iterator > t)
    toCut = n / str2num(factor(iterator - t));
    new = round(toCut);
    iterator = t;
  endif
 
  fc = factor(iterator);
  
  toFloat = new / str2num(fc);

  resultado3 = cstrcat("Resultado: ", num2str(toFloat), " * 10^", num2str(iterator));
  
endfunction