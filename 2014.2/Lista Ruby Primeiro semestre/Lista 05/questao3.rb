def quantidade_de_vogais ( s )
if(s.class==String) then
cont=0
for i in 0..s.size do
if(s[i]=="a" or s[i]=="e" or s[i]=="i" or s[i]=="o" or s[i]=="u" or s[i]=="A" or s[i]=="E" or s[i]=="I" or s[i]=="O" or s[i]=="U")then
cont=cont+1
end
end
return cont
else
return -1
end
end