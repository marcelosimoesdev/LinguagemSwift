// Apple Swift Tutorial - Do básico ao avançado (Parte 11)

// Control Flow - Estruturas condicionais (if / switch)

import Foundation



println("\n___________________________________\n")



// if

var peso = 40.0

if peso < 50.0 {
    println("Você não pode doar sangue")
}



println("\n___________________________________\n")



// if - else

peso = 60.0
if peso < 50.0 {
    println("Você não pode doar sangue")
} else {
    println("Você pode doar sangue")
}



println("\n___________________________________\n")



// if's aninhados

var salario = 3_000.00
var aliquotaImpostoRenda: Float

if salario <= 1_787.77 {
    aliquotaImpostoRenda = 0.0
} else if salario <= 2_679.29 {
    aliquotaImpostoRenda = 7.5
} else if salario <= 3_572.43 {
    aliquotaImpostoRenda = 15.0
} else if salario <= 4_463.81 {
    aliquotaImpostoRenda = 22.5
} else {
    aliquotaImpostoRenda = 27.5
}

println("Alíquota: \(aliquotaImpostoRenda)%")






// switch



println("\n___________________________________\n")



// Condição única
let ordemVogal = 2
switch ordemVogal {
case 1:
    println("Vogal correspondente: A")
case 2:
    println("Vogal correspondente: E")
case 3:
    println("Vogal correspondente: I")
case 4:
    println("Vogal correspondente: O")
case 5:
    println("Vogal correspondente: U")
default:
    println("Não existe vogal correspondente para este número")
}



println("\n___________________________________\n")



// Range
let quantidadeFilhos = 4
switch quantidadeFilhos {
case 0...3:
    println("Um carro comum serve")
case 4...8:
    println("Você vai precisar de uma Kombi")
default:
    println("Compre um ônibus")
}



println("\n___________________________________\n")



// Lista de valores
let letra = "a"
switch letra {
case "a", "e", "i", "o", "u":
    println("É uma vogal")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
"n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    println("É uma consoante")
default:
    println("Não é vogal nem consoante")
}



println("\n___________________________________\n")



// Condições (where)
let console: NSString = "Playstation 4"
switch console {
case let nome where nome.containsString("Xbox"):
    println("\(nome) é um console da Microsoft")
case let nome where nome.containsString("Playstation"):
    println("\(nome) é um console da Sony")
case let nome where nome.containsString("Wii"):
    println("\(nome) é um console da Nintendo")
default:
    println("Console não identificado")
}



println("\n___________________________________\n")



// Tupla
var coordenadas = (x: 0, y: 0)
switch coordenadas {
case (0, 0):
    println("X e Y estão no eixo zero")
case (0, _):
    println("X está no eixo zero")
case (_, 0):
    println("Y está no eixo zero")
default:
    println("X e Y não estão no eixo zero")
}



println("\n___________________________________\n")



// Usando valores dentro do "case"
coordenadas = (3, 5)
switch coordenadas {
case (0, 0):
    println("X e Y estão no eixo ZERO")
case (0, let y):
    println("X está no eixo ZERO e Y está no eixo \(y)")
case (let x, 0):
    println("X está no eixo \(x) e Y está no eixo ZERO")
case (let x, let y): // Este "case" substitui o default
    println("X está no eixo \(x) e Y está no eixo \(y)")
}






// Control Transfer Statements



println("\n___________________________________\n")



// continue
let stringEntrada = "texto a ser alterado"
var stringSaida = ""
for caracter in stringEntrada {
    switch caracter {
    case "a", "e", "i", "o", "u", " ":
        continue
    default:
        stringSaida.append(caracter)
    }
}
println(stringSaida)



println("\n___________________________________\n")


// break
let letra1 = "a"
switch letra1 {
case "a", "e", "i", "o", "u":
    println("É uma vogal")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
"n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    println("É uma consoante")
default:
    break
}



println("\n___________________________________\n")



// fallthrough
let inteiro = 5
var descricao = "O número \(inteiro) é"
switch inteiro {
case 2, 3, 5, 7, 11, 13, 17, 19:
    descricao += " um número primo, e também"
    fallthrough
default:
    descricao += " um inteiro."
}
println(descricao)



println("\n___________________________________\n")



// Labeled Statements
let textoEntrada = "abcdefghijklmnopqrstuvwxyz"
var textoSaida = ""
loopTexto: for letra in textoEntrada {
    meuSwitch: switch letra {
    case "a", "e", "i", "o", "u":
        continue
    case "r":
        break loopTexto
    default:
        textoSaida.append(letra)
    }
}
println(textoSaida)
