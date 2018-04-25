#devuelve las raices
#octave muestra los numeros menores a 1 en notacion cientifica
#TODO refactor
function r = raices (a,b,c,t)
  
  #para poner la precision en 15
  format long;

  if(a==0)
    r = "'a' debe ser distinto a cero";
    return;
  endif
  
  grDeA = grilla(a,t);
  grDeB = grilla(b,t);
  grDeC = grilla(c,t);

  nDeGrDeA = aNumero(grDeA);
  nDeGrDeB = aNumero(grDeB);
  nDeGrDeC = aNumero(grDeC);  
  
  terminoUno = grilla(nDeGrDeB^2,t);
  terminoDos = grilla(4*nDeGrDeA*nDeGrDeC,t);
  
  nTerminoUno = aNumero(terminoUno);
  nTerminoDos = aNumero(terminoDos);
  
  resta = nTerminoUno - nTerminoDos;
  
  if (resta < 0)
    r = "'b^2-4ac' debe ser mayor a cero";
    return;
  endif  
  
  grDeRaiz = grilla(sqrt(resta),t);
  
  nGrDeRaiz = aNumero(grDeRaiz);
  
  dosA = grilla(2*nDeGrDeA,t);
  
  nDosA = aNumero(dosA);
 
  r1 = x1(nDeGrDeB, nGrDeRaiz, nDosA);
  r2 = x2(nDeGrDeB, nGrDeRaiz, nDosA);
 
  r = cstrcat("x1=",num2str(r1),"  x2=",num2str(r2));

endfunction

#convierte un resultado de grilla en un numero
#para poder hacer operaciones aritmeticas
function numero = aNumero (resGrilla)
  
  sepNum = strsplit (resGrilla, "*");
  exp = strsplit (resGrilla, "^");
  
  if (size(sepNum) == 1)
    numero = str2num(sepNum{1});
  else  
    numero = str2num(sepNum{1}) * 10^(str2num(exp{2}));
  endif
  
endfunction

#raiz de resta
function r1 = x1(terminoB, terminoRaiz, divisor)

  dividendo = - terminoB - terminoRaiz;
  
  #necesario porque octave puede devolver -0 como funcion
  if (dividendo == 0) 
    r1 = 0;
  else
    r1 = dividendo/divisor;
  endif
  
endfunction

#raiz de suma
function r2 = x2(terminoB, terminoRaiz, divisor)

  dividendo = - terminoB + terminoRaiz;
  
  #necesario porque octave puede devolver -0 como funcion
  if (dividendo == 0) 
    r2 = 0;
  else
    r2 = dividendo/divisor;  
  endif
  
endfunction