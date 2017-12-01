matriz = 5.times.map do
 5.times.map do
 gets.to_i
 end
 end
soma = 0
for linha in 0..4 do
 for coluna in 0..4 do
 soma = soma + matriz[linha][coluna]
 end
end
puts soma 