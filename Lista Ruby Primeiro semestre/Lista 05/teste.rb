# Este programa testa as funcoes da lista de exercicios.
#
# Instrucoes
# ==========
# Crie um arquivo "respostas.rb" e coloque nele todas
# as funções. Depois execute este programa.

load 'respostas.rb'

def t(a,b=true)
  if a==b then
    puts "."
  else
    puts "F"
  end rescue puts "ERRO"
end

#Questao 1
puts "Questao 1"
t(maior2(3,4), 4)

#Questao 2
puts "Questao 2"
t(maior5(9,7,2,3,4), 9)

#Questao 3
puts "Questao 3"
t(quantidade_de_vogais("Isto eh so um teste."), 7)

#Questao 4
puts "Questao 4"
t(impar?(13))

#Questao 5
puts "Questao 5"
t(conta_palavras("Isto eh so  um teste."), 5)

#Questao 6
puts "Questao 6"
t(intervalo_a_b(3,7),[3,4,5,6,7])

#Questao 7
puts "Questao 7"
t(soma_elementos_matriz([[1,2,3],[4,5,6],[7,8,9]]), 45)

#Questao 8
puts "Questao 8"
t(fatorial(5), 120)

#Questao 9
puts "Questao 9"
t(if divisores(24) then divisores(24).sort end, [1,2,3,4,6,8,12,24].sort)

#Questao 10
puts "Questao 10"
t(primo?(23))

#Questao 11
puts "Questao 11"
t(primos_entre_si?(9,10))

#Questao 12
puts "Questao 12"
t(mdc(12,8), 4)

#Questao 13
puts "Questao 13"
t(mmc(8,12), 24)

#Questao 14
puts "Questao 14"
t(transcreve_numero("4005-2637"),
  ["quatro","zero","zero","cinco","dois","seis","tres","sete"])

#Questao 15
puts "Questao 15"
m1 = [[1,2,3],[4,5,6],[1,2,3]]
m2 = [[4,2,7],[1,2,6],[3,4,5]]
t(coincidencia_matriz(m1, m2), [[0,2,0],[0,0,6],[0,0,0]])

#Questao 16
puts "Questao 16"
t(sublista_ordenada([8,9,1,7,8,17,3]),[1,7,8,17])

#Questao 17
puts "Questao 17"
t(triangular_superior?([[1,2,0],[0,3,4],[0,0,7]]))

#Questao 18
puts "Questao 18"
t(massa_molecula('H2O'), 18)
t(massa_molecula('CO2'), 44)

#Questao 19
puts "Questao 19"
t(quadrado_magico?([[2,7,6],[9,5,1],[4,3,8]]))

#Questao 20
puts "Questao 20"
t( move_direita([
["P", "*", " ", " "],
["P", " ", "P", " "],
["P", "P", "P", " "],
]) )