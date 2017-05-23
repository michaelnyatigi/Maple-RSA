#This is a Fermat Factorisation protocol for use in Maple.

FermatFact:=proc(n,iterations)
  local x,y,initial,sq:
  initial:=ceil(sqrt(n)):
  for x from initial to (initial+iterations) do 
  sq:=x^2-n:

  y:=isqrt(sq):    #integer square root.
  if (y^2=sq) then
  
  printf("Factors for n found after %d iterations\n",x-initial+1);
  RETURN(x+y, x-y):

  fi: od:
  printf("No factors for n found after %d iterations\n",iterations):
end proc:



