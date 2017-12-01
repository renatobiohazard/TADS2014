def primos_entre_si? (n1,n2)
au=n1
cont=0
ar1=[]
while (au>0) do
if(n1%au==0)then
ar1[cont]=au
cont=cont+1
end
au=au-1
end

au=n2
cont1=0
ar2=[]
while (au>0) do
if(n2%au==0)then
ar2[cont1]=au
cont1=cont1+1
end
au=au-1
end

m=n1
if(n2>n1)then
m=n2
end

cont2=0
for i in 0..cont do
for j in 0..cont1 do
if(ar1[i]==ar2[j]) then
cont2=cont2+1
end
end
end


if(cont2>2)then
res="false"
else
res="true"
end

return res
end
