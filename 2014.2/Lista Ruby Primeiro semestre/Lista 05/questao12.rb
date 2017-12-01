def mdc (n1,n2)
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

m=cont
if(cont1>cont)then
m=cont1
end


ar3=[]
cont33=0
for i in 0..m do
for j in 0..m do
if(ar1[i]==ar2[j])then
ar3[cont33]=ar1[i]
cont33=cont33+1
end

end
end

res=ar3[0]
return res
end