def soma_elementos_matriz (m)
soma=0
b=m.size
b=b-1
for i in 0..b do
for j in 0..b do
soma=soma+m[i][j]
end
end
return soma
end