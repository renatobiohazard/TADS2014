n1=gets.to_f
n2=gets.to_f
if(n1>=0.0 and n1<=10.0 and n2>=0.0 and n2<=10.0)then
media=((n1*2)+(n2*3))/5
if(media>=6.0)then
puts "%.1f"% media.to_s + ":APROVADO"
else
if(media<2)then
puts "%.1f"% media.to_s + ":REPROVADO"
else
 puts "%.1f"% media.to_s + ":RECUPERACAO"
 end
 end
else
puts "INVALIDA"
end
