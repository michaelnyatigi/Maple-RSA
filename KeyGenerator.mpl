#RSA Key Generator.

RSAKEYS:=proc(n)
local p,q,keygenpq,T,e,d,keygene,inverse,phin,npri;
global KEYS;

p:=3;q:=5;


while(type(2*n-length(p*q),positive) and p<>q) do
keygenpq:=rand(10^(n-1)..10^n-1);
p:=nextprime(keygenpq());
q:=nextprime(keygenpq())
od;
T:=(p-1)*(q-1);
keygene:=rand(10^iquo(2*n,4)..10^(3*iquo(2*n,4)));
e:=T;
while(igcd(T,e)>1) do
e:=keygene();
inverse:=msolve(e*d=1,T);
phin:=(p-1)*(q-1):
npri:=p*q:
od;assign(inverse);

print("KEY: P=P, Q=Q, Phi(n)=phin, n=npri, e=e, d=d"):
print("Value of P, the first prime.",p):
print("Value of Q, the second prime.",q):
print("Value of Phi(n)",phin):
print("Value of n, whre n=p*q",npri):
print("Value of e",e):
print("Value of d",d):

KEYS:= < p , q, phin, npri, e, d >:

end proc:


