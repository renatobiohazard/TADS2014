def primo? (n)
au=n
cont=0
while (au>0) do
if(n%au==0)then
cont=cont+1
end
au=au-1
end

if(cont>2)then
res= "false"
else
res= "true"
end

return res
end

