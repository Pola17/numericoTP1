function sinCerosAtras = quitarCerosTraseros (numeroConCeros)
  
  cerosFin = 0;
  longitud = length(numeroConCeros);
  i = longitud;
  
  while (numeroConCeros(i) == '0')
    cerosFin++;
    i--;  
  endwhile

  sinCerosAtras = substr (numeroConCeros, 1, length(numeroConCeros)-cerosFin);  

endfunction