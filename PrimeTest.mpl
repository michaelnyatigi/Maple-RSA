#Rabin-Miller prime test.

Miller:= proc(n,a)
local primer, m, q, r, e, i:

primer:=false: m:=n-1: q:=m: r:=0:

while type(q,even) do    
  q:=iquo(q,2):r:=r+1:
 end do:
e:=a&^q mod n:           #While writing for m = n-1 we test m=q*2^r.

while type(q,even) do    
  q:=iquo(q,2):r:=r+1:
 end do:
e:=a&^q mod n:           #tests for a^q equiv 1 mod n.

if  e=1  then
  primer:=true:  
end if:
for i from 0 to r-1 do  
 print(i,e mod n):
if e=m then 
    primer:=true:
  end if:
  e:=e*e mod n: 


end do:
if primer=true then
print("The tested number is probably prime try with another a.");
else
print("The tested number is composite."):
end if:
end proc:

#This is a simple AKS PrimeTest protocol, it does not calculate in mod r. Thus not polytime.

AKSsimple:=proc(n,a)

local hh, ee, cc, ma, ha :

with(PolynomialTools):

hh:=((x+a)^n)-(x^n+a): #This would be the algorithm

ee:=expand(hh/n): # With this function you can expand.

cc:= coeffs(ee):

ma:=map(type,[cc],integer):

ha:= has(ma,false):

 if (ha=false) then
    printf("The tested number is prime."):
	
	 else
printf("The tested number is composite"):
 end if:
	
end proc:
