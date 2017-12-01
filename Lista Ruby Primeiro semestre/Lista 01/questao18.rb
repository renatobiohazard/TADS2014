valvend=gets.to_f
valorsem=valvend/1.4
icms=valorsem*0.18
icms="%.2f"%icms
ipi=valorsem*0.13
ipi="%.2f"%ipi
pis=valorsem*0.014
pis="%.2f"%pis
cof=valorsem*0.076
cof="%.2f"%cof
valorsem="%.2f"%valorsem
puts "ICMS: "+icms.to_s
puts "IPI: "+ipi.to_s
puts "PIS: "+pis.to_s
puts "Cofins: "+cof.to_s
puts "Valor sem impostos: "+valorsem.to_s