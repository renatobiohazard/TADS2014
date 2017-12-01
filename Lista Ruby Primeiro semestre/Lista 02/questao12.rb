n1=gets.to_i
n2=gets.to_i
n3=gets.to_i


if(n1>n2 and n1>n3)then
puts n1
if(n2>n3)then
puts n2
puts n3
else
puts n3
puts n2
end
end

if(n2>n1 and n2>n3)then
puts n2
if(n1>n3)then
puts n1
puts n3
else
puts n3
puts n1
end
end

if(n3>n2 and n3>n1)then
if(n2>n1)then
puts n3
puts n2
puts n1
else
puts n3
puts n1
puts n2
end
end








