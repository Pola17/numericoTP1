function resultado = grilla (parteEntera, parteDecimal, t)
  
  trimParteEntera = strtrim(argn(1,:));
  trimParteDecimal = strtrim(argn(2,:));
  
  if (parteEntera > 0)
    sinCerosAdelante = quitarCerosDelanteros(trimParteEntera);   
    exp = length(sinCerosAdelante);
    n = obtenerN (sinCerosAdelante, trimParteDecimal);
  elseif (parteDecimal > 0)
    sinCerosAdelante = quitarCerosDelanteros(trimParteDecimal);
    exp = length(sinCerosAdelante) - length(trimParteDecimal);
    n = sinCerosAdelante;
  else
    resultado = "0";
    return;
  endif
  
  redondeado = redondear (n ,t);
  
  resultado = cstrcat("0.", quitarCerosTraseros(redondeado), " * 10^", num2str(exp));
  
endfunction