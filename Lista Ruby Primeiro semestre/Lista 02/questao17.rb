n1=gets.to_i
maior=n1
menor=0
n2=gets.to_i
if(n1>n2)then
maior=n1
menor=n2
else
maior=n2
menor=n1
end
n3=gets.to_i
if(n3>maior)then
maior=n3
else
if(n3<menor)then
menor=n3
end
end

n4=gets.to_i
if(n4>maior)then
maior=n4
else
if(n4<menor)then
menor=n4
end
end

n5=gets.to_i
if(n5>maior)then
maior=n5
else
if(n5<menor)then
menor=n5
end
end

n6=gets.to_i
if(n6>maior)then
maior=n6
else
if(n6<menor)then
menor=n6
end
end

puts maior-menor