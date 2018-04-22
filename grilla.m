function resultado = grilla (parteEntera, parteDecimal, t)
  
  #n = obtenerN (parteEntera, argn(2, :));
  
  n = obtenerN (quitarCeros(argn(1,:),"delanteros"), argn(2,:));
  
  red = redondear (n ,t);
  
  if (parteEntera > 0)
    exp = length(num2str(parteEntera));
  else
    exp = length(num2str(parteDecimal)) - length(argn(2,:));
  endif
  
  resultado = cstrcat("0.", quitarCeros(red, "todos"), " * 10^", num2str(exp));
  
endfunction