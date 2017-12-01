n1=gets.to_i
n2=gets.to_i
n3=gets.to_i

if(n1==1 and n2==1)then
n1=31
n2=12
n3=n3-1
puts n1.to_s + "/" + n2.to_s + "/" + n3.to_s
elsif(n1==1 and n2==3)then
n1=28
n2=n2-1
puts n1.to_s + "/" + n2.to_s + "/" + n3.to_s
elsif(n1==1)then
if(n2==2 or n2==4 or n2==6 or n2==9 or n2==11)then
n1=31
n2=n2-1
puts n1.to_s + "/" + n2.to_s + "/" + n3.to_s
elsif(n1==1)then
if(n2==5 or n2==7 or n2==8 or n2==10 or n2==12)then
n1=30
n2=n2-1
puts n1.to_s + "/" + n2.to_s + "/" + n3.to_s
end
end
else
n1=n1-1
puts n1.to_s + "/" + n2.to_s + "/" + n3.to_s

end