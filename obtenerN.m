function n = obtenerN (parteEntera, parteDecimal)
  
  if (parteDecimal > 0)
    n = strcat(num2str(parteEntera), num2str(parteDecimal));
  else
    n = parteEntera;
  endif 
   
endfunction