function bool = esCero (numeroEnStr)
  
  for i = 1:length(numeroEnStr)
    if(numeroEnStr(i) != '0')
      bool = false;
      return;
    endif
  endfor
  
  bool = true;
    
endfunction