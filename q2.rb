n = []

puts "Insira o primeiro número."
n [0] = gets.chomp.to_f

puts "Insira o segundo número."
n [1] = gets.chomp.to_f

puts case (n [0] <=> n [1])
when 1
      "O 1º número é maior do que o 2º."
when -1
      "O 2º número é maior do que o 1º."
else      
      "Números são iguais."
end

n = nil