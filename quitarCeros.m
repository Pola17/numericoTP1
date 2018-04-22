function sinCeros = quitarCeros (numeroConCeros, condicion)
  
  i = 1;
  cerosInicio = 0;
  cerosFin = 0;
  
  while ((numeroConCeros(i) == '0') && (strcmp(condicion,"delanteros") == 1))
    cerosInicio++;
    i++;  
  endwhile
  
  i = length(numeroConCeros);
  while ((numeroConCeros(i) == '0') && (strcmp(condicion,"delanteros") == 0))
    cerosFin++;
    i--;  
  endwhile

  sinCeros = substr (numeroConCeros, 1+cerosInicio, length(numeroConCeros)-cerosFin-cerosInicio );  

endfunction