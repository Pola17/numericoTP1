function sinCerosAdelante = quitarCerosDelanteros (numeroConCeros)
  
  i = 1;
  cerosInicio = 0;
  longitud = length(numeroConCeros);
  
  while (numeroConCeros(i) == '0')
    cerosInicio++;
    if (longitud == cerosInicio)
      sinCerosAdelante = "";
      return;
    endif;
    i++;  
  endwhile

  sinCerosAdelante = substr (numeroConCeros, 1+cerosInicio);  

endfunction