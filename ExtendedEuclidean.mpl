#Extended Euclidean Algorithm Maple file.

ExtendedEuclid := proc(a::nonnegint,b::nonnegint,x::name,y::name)
  local r0,r1,ti,s0,t0,ri,s1,t1,si,q,n0,yel;
  n0 := a;
  r0 := a;  r1 := b;
  s0 := 1;  s1 := 0;  
  t0 := 0;  t1 := 1;
    while (r1 <> 0) do
       q := floor(r0/r1);
    	ri := r0 - q*r1;
        si := s0 - q*s1;
        ti := s1 - q*t1;
		
        r0 := r1;  r1 := ri;
        s0 := t0;  t0 := si;
        s1 := t1;  t1 := ti;
 
  print(s0,s1); 
 od;
  x := s0;  y := s1;
  print("The gcd of this modular function is",r0):
  yel:= s1 mod n0;
  print("The inverse of this modular function is",yel):
  
end proc;