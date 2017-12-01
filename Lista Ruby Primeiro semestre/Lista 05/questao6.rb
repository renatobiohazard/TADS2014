def intervalo_a_b (n1,n2)
arr=[]


if(n1>n2)then
n=n1
m=n2
else 
m=n1
n=n2
end

for i in m..n do
arr<<i
end
return arr
end