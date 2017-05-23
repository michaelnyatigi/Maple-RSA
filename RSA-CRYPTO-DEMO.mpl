#RSA Cryptosystem Demo.
#For more information on this read PDF.
#It is recommended to not implement text book RSA for real world applications without a full understand on the topic.

restart ;
read "KeyGenerator.mpl":
RSAKEYS(2):                                      #Recommended above 3.


M:="So long and thanks for all the fish.":       #M is a string of what you are looking to encode.
with(StringTools):
e:=KEYS[5]:                                      
n:=KEYS[4]:
m:=map(Ord,Explode(M)):
k:=nops(m):
for i from 1 to k do
    m[i] := m[i]^e mod n;
end do:
m;


  
d:=KEYS[6]:
C:=m:
for i from 1 to k do
    C[i] := C[i]^d mod n;
    
end do:
for i from 1 to k do
Message[i] :=Char(op(C[i])):
end do:
Me:=convert(Message, list):
Implode(Me);
