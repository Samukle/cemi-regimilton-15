limites = [ 16, 24 ]
temprtr = [ "fria", "agradável", "quente" ]

str = ->(x) { "A temperatura está " + x + "." }

puts "Insira a temperatura em Celsius (°C)."
input = gets.chomp.to_f

j = 0 # índice correspondente à `tmptr` final
for x in (0..1).reverse_each
      if input > limites [x]
            j = x+1
            break
      end   
end

puts str.(temprtr[j])