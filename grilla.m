function resultado = grilla (parteEntera, parteDecimal, t)
  
  trimParteEntera = strtrim(argn(1,:));
  trimParteDecimal = strtrim(argn(2,:));
  
  if (parteEntera > 0)
    sinCerosAdelante = quitarCeros(trimParteEntera,"delanteros");
    exp = length(sinCerosAdelante);
    n = obtenerN (sinCerosAdelante, trimParteDecimal);
  else
    sinCerosAdelante = quitarCeros(trimParteDecimal,"delanteros");
    exp = length(sinCerosAdelante) - length(trimParteDecimal);
    n = sinCerosAdelante;
  endif
  
  red = redondear (n ,t);
  
  resultado = cstrcat("0.", quitarCeros(red,"todos"), " * 10^", num2str(exp));
  
endfunction