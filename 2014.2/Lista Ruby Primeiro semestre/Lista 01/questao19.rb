km=gets.to_f
kmcr=gets.to_f
prec=gets.to_f
arrec=gets.to_f
cont=(km/kmcr)*prec
brut=arrec-cont
liq=brut-(arrec*0.06)
puts "%.2f"%brut
puts "%.2f"%liq