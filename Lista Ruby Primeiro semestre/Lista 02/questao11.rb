n1=gets.to_i
n2=gets.to_i
n3=gets.to_i


if(n1==n2 and n2==n3)then
puts "Equilatero"
else
if(n1==n2 or n2==n3 or n1==n3)then
puts "Isosceles"
else
puts "Escaleno"
end
end


