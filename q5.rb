puts "Insira a nota de prova."
nota = gets.chomp.to_f
corte = 7.0
if (nota >= corte)
      puts "Nota aprovada."
else
      puts "Nota reprovada."
end