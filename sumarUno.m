function result = sumarUno (numero)
  
  longitud = length(numero);
  aux = "";
  eraNueve = false;
  
  while (longitud != 0)  
    if (longitud == length(numero) || eraNueve)
      if (numero(longitud) == "9")
        eraNueve = true;
        aux = strcat("0", aux);
      else
        aux = strcat(num2str(str2num(numero(longitud))+1), aux);
        eraNueve = false;
      endif
      longitud--;
    else
      sub = substr (numero, 1, length(numero)-(length(numero)-longitud));
      result = strcat (sub, aux);
      return
    endif
  endwhile

  result = aux;
  
endfunction