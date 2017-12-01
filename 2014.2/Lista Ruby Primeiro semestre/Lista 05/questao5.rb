def conta_palavras (texto)
if(texto.class==String) then
cont=0
for i in 0..texto.size do
if(texto[i]==" ")then
cont=cont+1
end
end
return cont
end
end