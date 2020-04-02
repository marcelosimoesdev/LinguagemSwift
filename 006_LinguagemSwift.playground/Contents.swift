// Apple Swift Tutorial - Do básico ao avançado (Parte 06)
// Operadores básicos
// Atribuição
var valor1 = 10
var valor2 = 20
valor1 = valor2

var (x, y) = (10, 20)
x
y



// Aritiméticos
let soma = 2 + 3
let subtracao = 9 - 2
let multiplicacao = 3 * 3
let divisao = 8 / 4

let concatenarStrings = "str1 " + " str2"



// Resto da divisão
let restoDivisao = 5 % 2
let restoDivisaoComPontoFlutuante = 5.truncatingRemainder(dividingBy: 2.4)



// Incremento e Decremento
var i = 0
i += 1                // i = i + 1
i -= 1                // i = i - 1
var valorBase = 1
var valorAtribuido = valorBase

valorBase
valorAtribuido



// Inverter sinal
let cinco = 5
let cincoNegativo = -cinco
let cincoPositivo = -cincoNegativo

let a = 5
let b = +a



// Atribuição composta
var c = 6
c -= 2 // c = c - 2
c += 2
c *= 2
c /= 2



// Comparação
1 == 1
1 != 2
1 > 2
1 < 2
1 >= 2
1 <= 2

let salarioMinimo = 724.00
let meuSalario = 200.00

if meuSalario < salarioMinimo {
    let _ = "Ganho mal pra caramba"
} else {
    let _ = "Poderia ser pior"
}

let conclusao = meuSalario < salarioMinimo ? "Ganho mal pra caramba" : "Poderia ser pior"



// Range (..< x ...)
for indice in 1..<3 {
    print(indice)
}



// Lógicos (Negação, OU, E)
var tenhoCarro = false
var tenhoMoto = true
var estouDoente = false

if !tenhoCarro {
    print("Vou de ônibus")
}

if tenhoCarro || tenhoMoto {
    print("Pelo menos não vou de ônibus")
}

if tenhoCarro && tenhoMoto {
    print("Posso escolher qual usar")
}

if (!tenhoCarro && !tenhoMoto) || estouDoente {
    print("Melhor ficar em casa")
} else {
    print("Posso sair")
}
