// Apple Swift Tutorial - Do básico ao avançado (Parte 10)

// Control Flow - Estuturas de repetição (for / while)




// for-in



println("\n________________________\n")



// for-in em Ranges
let tabuada = 7
for multiplicador in 1...10 {
    println("\(tabuada) x \(multiplicador) = \(tabuada * multiplicador)")
}



println("\n________________________\n")



// for-in em Ranges ignorando o valor
var numero = 2
let totalOperacoes = 4
for _ in 1..<totalOperacoes {
    numero *= numero
}
println("Resultado final: \(numero)")




println("\n________________________\n")



// for-in em Arrays
let listaContinentes = ["África", "América", "Ásia", "Europa", "Oceania"]
for continente in listaContinentes {
    println(continente)
}



println("\n________________________\n")



// for-in em Dictionaries
let moedas = ["BRL": "Real Brasil", "USD": "Dólar dos EUA", "EUR": "Euro"]
for (sigla, descricao) in moedas {
    println("\(sigla) - \(descricao)")
}



println("\n________________________\n")



// for-in em Strings
for caracter in "Swift" {
    println(caracter)
}






// for-condition-increment



println("\n________________________\n")


for var indice = 0; indice < 5; ++indice {
    println("Valor do índice: \(indice)")
}


println("\n________________________\n")


var i: Int
for i = 0; i < 3; ++i {
    println("Valor do índice: \(i)")
}
println("\nO bloco executou \(i) vezes")






// while / do-while



println("\n________________________\n")



// while
var multiplosDe7 = 7
while multiplosDe7 < 50 {
    println(multiplosDe7)
    multiplosDe7 += 7
}



println("\n________________________\n")



// do-while
var valor = 20
do {
    println(valor)
    ++valor
} while valor < 10

valor
