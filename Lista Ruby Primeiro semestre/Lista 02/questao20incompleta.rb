time1=gets.chomp
time2=gets.chomp
time3=gets.chomp

puts "digite resultado time1 vs time 2"

gol1=gets.to_i
gol2=gets.to_i

if(gol1>gol2)then
ptim1=3
ptim2=0
pv1=1
pv2=0
pem1=0
pem2=0
pder1=0
pder2=1
golp1=gol1
golp2=gol2
golcon1=gol2
golcon2=gol1
sal1=gol1-gol2
sal2=gol2-gol1
else
if(gol2>gol1)then
ptim2=3
ptim1=0
pv2=1
pv1=0
pem2=0
pem1=0
pder2=0
pder1=1
golp2=gol2
golp1=gol1
golcon2=gol1
golcon1=gol2
sal2=gol1-gol2
sal1=gol2-gol1
else
if(gol2==gol1)then
ptim2=1
ptim1=1
pv2=0
pv1=0
pem2=1
pem1=1
pder2=0
pder1=0
golp2=gol2
golp1=gol1
golcon2=gol1
golcon1=gol2
sal2=gol1-gol2
sal1=gol2-gol1
end
end
end

if(gol1>gol3)then
ptim1=ptim1+3
ptim3=0
pv1=pv1+1
pv3=0
pem1=0
pem3=0
pder1=0
pder3=1
golp1=gol1+golp1
golp3=gol2
golcon1=gol2+golcon1
golcon3=gol1
sal1=(gol1-gol3)+sal1
sal3=gol3-gol1
else
if(gol3>gol1)then
ptim3=3
ptim1=0+ptim1
pv3=1
pv1=0+pv1
pem3=0
pem1=0
pder3=0
pder1=1
golp3=gol3
golp1=gol1+golp1
golcon2=gol1
golcon1=gol3+golcon1
sal3=gol1-gol3
sal1=(gol3-gol1)+sal1
else
if(gol2==gol1)then
ptim3=1
ptim1=1+ptim1
pv3=0
pv1=0
pem3=1
pem1=1
pder3=0
pder1=0
golp3=gol3
golp1=gol1
golcon3=gol1
golcon1=gol3
sal3=gol1-gol3
sal1=(gol3-gol1)
end
end
end

if(gol2>gol3)then
ptim1=3
ptim2=0
pv1=1
pv2=0
pem1=0
pem2=0
pder1=0
pder2=1
golp1=gol1
golp2=gol2
golcon1=gol2
golcon2=gol1
sal1=gol1-gol2
sal2=gol2-gol1
else
if(gol2>gol1)then
ptim2=3
ptim1=0
pv2=1
pv1=0
pem2=0
pem1=0
pder2=0
pder1=1
golp2=gol2
golp1=gol1
golcon2=gol1
golcon1=gol2
sal2=gol1-gol2
sal1=gol2-gol1
else
if(gol2==gol1)then
ptim2=1
ptim1=1
pv2=0
pv1=0
pem2=1
pem1=1
pder2=0
pder1=0
golp2=gol2
golp1=gol1
golcon2=gol1
golcon1=gol2
sal2=gol1-gol2
sal1=gol2-gol1
end
end
end


