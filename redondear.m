function redondeado = redondear (numero, precision)

  if (precision >= length(numero))
    redondeado = numero;
  else
    digitoTruncado = str2num(numero(precision+1));
    aux = strtrunc (numero, precision);
    if (digitoTruncado >= 5)
      redondeado = sumarUno(aux);
    endif
  endif

endfunction