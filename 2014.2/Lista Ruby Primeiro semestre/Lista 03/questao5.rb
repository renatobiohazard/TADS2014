num1=5.times.map do gets.to_f end
n1=gets.to_i
n2=gets.to_i
if(n1>19 or n1<=0)then
if(n2>19 or n1<=0)then
puts "0.00"
else
media=(num1[n2]+0.0)/2.0
puts "%.2f"%media
end
else
if(n2>19 or n1<=0)then
media=(num1[n1]+0.0)/2.0
puts "%.2f"%media
else
media=(num1[n1]+num1[n2])/2.0
puts "%.2f"%media
end
end
