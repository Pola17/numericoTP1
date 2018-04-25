#si n es un numero sirve hasta el maximo que tolera octave sin romper el formato
#si n es un string sirve para cualquier numero
#t es un numero
function resultado = grilla (n,t)
  
  if (isnumeric(n))
    # precision de long
    trimN = num2str(n,15);
  else
    #es string
    trimN = n;
  endif
  
  if (trimN(1)=="-")
    signo = "-";
    trimN = substr(trimN,2);
  else
    signo = "";
  endif

  numero = strsplit(trimN, ".");
  
  if (size(numero) == 1)
    resultado = cstrcat(signo, gr (numero{1}, "0", t));
  else  
    resultado = cstrcat(signo, gr (numero{1}, numero{2}, t));
  endif
  
endfunction