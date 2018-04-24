function resultado = grilla (n,t)
  
  trimN = strtrim(argn(1,:));
  
  numero = strsplit (trimN, ".");
  
  resultado = gr (numero{1}, numero{2}, t);
  
endfunction