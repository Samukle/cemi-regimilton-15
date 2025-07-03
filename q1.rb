grupo = [ "menor de idade", "adulto", "idoso" ]
grupoMax = grupo.length-1

limites = [ 0, 18, 60 ]
str = ->(x) { "Você é " + x + "." }

puts "Por favor insira sua idade."
idade = gets.chomp.to_i

for i in 0..grupoMax do
      if (idade >= limites [grupoMax-i])
            puts str.(grupo[grupoMax-i])
            break
      end
end
