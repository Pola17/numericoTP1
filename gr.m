#parteEntera y parteDecimal son strings
#si fueran numeros podria ser demasiado grande para octave
function resultado = gr (parteEntera, parteDecimal, t)
  
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
  
  redondeado = redondear (n,t);
  
  #si eran todos 9s, el redondeo devuelve 0
  if (str2num(redondeado) == 0)
    resultado = cstrcat("0.1 * 10^", num2str(exp+1));
  #si exp es 0 entonces directamente el numero
  elseif (exp == 0)
    resultado = cstrcat("0.", quitarCerosTraseros(redondeado));
  else
    resultado = cstrcat("0.", quitarCerosTraseros(redondeado), " * 10^", num2str(exp));
  endif
endfunction


#true si el string es de numero/s 0
function bool = esCero (numeroEnStr)
  for i = 1:length(numeroEnStr)
    if(numeroEnStr(i) != '0')
      bool = false;
      return;
    endif
  endfor
  bool = true;    
endfunction


function n = obtenerN (parteEntera, parteDecimal)
  if (!esCero(parteDecimal))
    n = strcat(num2str(parteEntera), num2str(parteDecimal));
  else
    n = parteEntera;
  endif
endfunction