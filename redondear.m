function redondeado = redondear (numero, precision)

  if (precision >= length(numero))
    redondeado = numero;
  else
    sig = str2num(numero(precision+1));
    if (sig > 4)
    
    endif
    redondeado = strtrunc (numero, precision);
  endif
  
endfunction