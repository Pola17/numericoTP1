function sinCeros = quitarCeros (numeroConCeros, condicion)
  
  i = 1;
  cerosInicio = 0;
  cerosFin = 0;
  longitud = length(numeroConCeros);
  
  while ((numeroConCeros(i) == '0') && (strcmp(condicion,"delanteros") == 1 || strcmp(condicion,"todos") == 1))
    cerosInicio++;
    if (longitud == cerosInicio)
      sinCeros = "";
      return;
    endif;
    i++;  
  endwhile
  
  i = longitud;
  while ((numeroConCeros(i) == '0') && (strcmp(condicion,"todos") == 1))
    cerosFin++;
    i--;  
  endwhile
  
#  if (x == cerosInicio)
#    sinCeros = "0";
#  else
    sinCeros = substr (numeroConCeros, 1+cerosInicio, length(numeroConCeros)-cerosFin-cerosInicio );  
#  endif

endfunction