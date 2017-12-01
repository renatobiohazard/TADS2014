def divisores (n)
arr=[]
for i in 1..n do
if(n%i==0)then
arr<<i
end
end
return arr
end