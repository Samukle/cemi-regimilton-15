puts "Insira o número para o fatorial."
n = gets.chomp.to_i
print n.to_s + "!"
fatorial = 1 # Resultado
for i in 1..n
      fatorial *= i
end
puts " = " + fatorial.to_s