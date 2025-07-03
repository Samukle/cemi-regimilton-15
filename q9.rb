puts "Insira o número para a tabuada."
num = gets.chomp.to_i
tabuada = 10

formato = ->(y, z) { num + " × " + y.to_s + " = " + z.to_s  }
for i  in 1..10
      puts formato(num, i, num*i)
end