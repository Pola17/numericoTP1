function resultado3 = grilla (n, t)
  
  longitud = length(num2str(n));
  
  if (longitud > t)
    aRedondear = n / factor(longitud - t);
    redondeado = round(aRedondear);
    iterator = t;
  else
    redondeado = n;
    iterator = longitud;
  endif
  
  float = strcat("0.", num2str(redondeado));

  resultado3 = cstrcat(float, " * 10^", num2str(longitud));
  
endfunction