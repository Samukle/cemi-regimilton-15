--- PRÁTICA REGIMILTON em LUA
--- Samuel Iizuka

--- 1 ---------------------------------
local GRUPO   = { "menor de idade", "adulto", "idoso" }
local LIMITES = { 0, 18, 60 }

local STR0 = "Você é %s."

print "Por favor insira sua idade."
local idade = io.read("*n")

for i = 1, 3 do
      if idade >= LIMITES [i] then
            print(string.format(STR0, GRUPO [i]))
      end
end


--- 2 ---------------------------------
print "Insira o primeiro número."
local n1 = io.read("*n")

print "Insira o segundo número."
local n2 = io.read("*n")

if n1 == n2 then
      print "Números são iguais."
elseif n1 < n2 then
      print "O 2° número é maior que o 1°."
else
      print "O 1° número é maior que o 2°."
end


--- 3 ---------------------------------
print "Insira 2 números."
local num1, num2 = io.read("*n","*n")

if num1 % num2 == 0 then
      print(true)
else
      print(false)
end


--- 4 ---------------------------------
local LIMITES = { 16, 24 }
local TEMPRTR = { "fria", "agradável", "quente" }

local STR = "A temperatura está %s."

print "Insira a temperatura em Celsius (°C)."
local temp = io.read("*n")
local j = 1 -- 2° índice correspondente a TEMPRTR
for i = 2, 1, -1 do
      if temp > LIMITES [i] then
            j = i+1 -- +1 pois o "frio" não existe dentro do LIMITES
            break
      end
end

assert(j>0 and j<=#TEMPRTR, "Que temperatura é essa?")
print(string.format(STR, TEMPRTR[j]))


--- 5 ---------------------------------
print "Insira a nota de prova."
local nota  = io.read("*n")

local CORTE = 7.0
if nota >= CORTE then
      print "Nota aprovada."
else
      print "Nota reprovada."
end


--- 6 ---------------------------------
for i = 1, 10 do
      print(i)
end


--- 7 ---------------------------------
print "Insira o número para o fatorial."
local numero = io.read("*n")
local fatorial = 1
for i = numero, 1, -1 do
      fatorial = fatorial * i
end
print(fatorial)


--- 8 ---------------------------------
for i = 10, 1, -1 do
      print(i)
end


--- 9 ---------------------------------
print "Insira o número para a tabuada."
local numero = io.read("*n")
local TABUADA = 10

local FORMATO = "%i × %i = %i"
for i = 1, TABUADA, 1 do
      print(string.format(FORMATO, numero, i, numero*i))
end


--- 10 --------------------------------
print "Insira os números inteiros a serem somados separados por espaços."
local linha = io.read("*l")
local soma = 0
for numero in string.gmatch(linha, "%d+") do
      soma = soma + numero
end

print(soma)


--- 11 --------------------------------
print "Insira um número inteiro."
local x = io.read("*n")

print "Insira um segundo número inteiro."
local y = io.read("*n")

print(string.format("A soma dos números é: %d", x+y))


--- 12 --------------------------------
print "Insira horas trabalhadas no mês."
local HT = io.read("*n")

print "Insira o valor da hora trabalhada."
local VH = io.read("*n")

print "Insira o percentual de desconto."
local PD = io.read("*n")

local SB = HT * VH
local TD = (PD*0.01) * SB
local SL = SB-TD

print(string.format("%i horas trabalhadas, R$%.02f salário bruto, R$%.02f desconto, R$%.02f salário líquido", HT, SB, TD, SL))


--- 13 --------------------------------
print "Insira a temperatura em Celsius (°C)."
local temp = io.read("*n")
print(string.format("%f°F", (9 * temp + 160)/6))


--- 14 --------------------------------
print "Insira 2 valores strings."
local A, B = io.read("*l", "*l")
local _A = A
A = B
B = _A
print "Trocado A por B."
print(string.format("A: %a\nB: %a", A, B))


--- 15 --------------------------------
print "Insira o tempo gasto em horas."
local time = io.read("*n")

print "Insira a velocidade média em km/h."
local velo = io.read("*n")

local distancia = time * velo
local litrosUsados = distancia / 12

local STR = [[VELOCIDADE MÉDIA: %.4f km/h
TEMPO GASTO: %.4f h
DISTÂNCIA PERCORRIDA: %.4f km
LITROS UTILIZADOS NA VIAGEM: %.4f l]]

print(string.format(STR, time, velo, distancia, litrosUsados))