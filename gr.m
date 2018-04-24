function resultado = gr (parteEntera, parteDecimal, t)
  
  #trimParteEntera = strtrim(argn(1,:));
  #trimParteDecimal = strtrim(argn(2,:));
  
  if (!esCero(parteEntera))
    sinCerosAdelante = quitarCerosDelanteros(parteEntera);   
    exp = length(sinCerosAdelante);
    n = obtenerN (sinCerosAdelante, parteDecimal);
  elseif (!esCero(parteDecimal))
    sinCerosAdelante = quitarCerosDelanteros(parteDecimal);
    exp = length(sinCerosAdelante) - length(parteDecimal);
    n = sinCerosAdelante;
  else
    resultado = "0";
    return;
  endif
  
  redondeado = redondear (n ,t);
  
  if (str2num(redondeado) == 0)
    resultado = cstrcat("0.1 * 10^", num2str(exp+1));
  elseif (exp == 0)
    resultado = cstrcat("0.", quitarCerosTraseros(redondeado));
  else
    resultado = cstrcat("0.", quitarCerosTraseros(redondeado), " * 10^", num2str(exp));
  endif
endfunction