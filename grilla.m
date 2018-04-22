function resultado = grilla (n, t)
  
  longitud = length(num2str(n));
  
  #number = argn(1, :);
  
  if (longitud > t)
    aRedondear = n / divisor(longitud - t);
    redondeado = round(aRedondear);
  else
    redondeado = n;
  endif
  
  float = strcat("0.", num2str(redondeado));

  resultado = cstrcat(float, " * 10^", num2str(longitud));
  
endfunction