// Apple Swift Tutorial - Do básico ao avançado (Parte 10)
// Control Flow - Estuturas de repetição (for / while)



// for-in


print("\n________________________\n")



// for-in em Ranges
let tabuada = 7
for multiplicador in 1...10 {
    print("\(tabuada) x \(multiplicador) = \(tabuada * multiplicador)")
}



print("\n________________________\n")



// for-in em Ranges ignorando o valor
var numero = 2
let totalOperacoes = 4
for _ in 1..<totalOperacoes {
    numero *= numero
}
print("Resultado final: \(numero)")




print("\n________________________\n")



// for-in em Arrays
let listaContinentes = ["África", "América", "Ásia", "Europa", "Oceania"]
for continente in listaContinentes {
    print(continente)
}



print("\n________________________\n")



// for-in em Dictionaries
let moedas = ["BRL": "Real Brasil", "USD": "Dólar dos EUA", "EUR": "Euro"]
for (sigla, descricao) in moedas {
    print("\(sigla) - \(descricao)")
}



print("\n________________________\n")



// for-in em Strings
for caracter in "Swift" {
    print(caracter)
}






// for-condition-increment


print("\n________________________\n")

for indice in 0..<5 {
    print("Valor do índice: \(indice)")
}


print("\n________________________\n")






// while / do-while


print("\n________________________\n")



// while
var multiplosDe7 = 7
while multiplosDe7 < 50 {
    print(multiplosDe7)
    multiplosDe7 += 7
}



print("\n________________________\n")



// do-while
var valor = 20
repeat {
    print(valor)
    valor += 1
} while valor < 10

valor
