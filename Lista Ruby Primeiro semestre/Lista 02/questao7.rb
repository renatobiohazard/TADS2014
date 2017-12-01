n1=gets.to_i
n2=gets.to_i
n3=gets.to_i

if(n1>n2 and n1>n3)then
sum=n2+n3
if(n1>sum)then
puts "MENOR"
else
puts "MAIOR"
end
else 
if(n2>n1 and n2>n3)then
sum=n3+n1
if(n2>sum)then
puts "MENOR"
else
puts "MAIOR"
end
end
end
if(n3>n1 and n3>n2)then
sum=n1+n2
if(n3>sum)then
puts "MENOR"
else
puts "MAIOR"
end
end

