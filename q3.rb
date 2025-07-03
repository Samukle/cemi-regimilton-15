puts "Insira 2 números."
n = [gets.chomp.to_i, gets.chomp.to_i]

if (n [0] % n [1] == 0)
      puts "O número é divisível " + n [1] + "."
else
      puts "O número não é divisível por " + n [1] + "."
end