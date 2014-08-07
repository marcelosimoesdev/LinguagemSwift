// Apple Swift Tutorial - Do básico ao avançado (Parte 12)

// Functions (Funções 1/2)

import Foundation



// Função sem parâmetro e sem retorno
func imprimirDataHoraNoLog() {
    
    println(NSDate())
}

imprimirDataHoraNoLog()



// Função com parâmetro
func imprimirMensagemNoLog(texto: String) {
    
    println("Mensagem: \(texto)")
}

imprimirMensagemNoLog("Minha string qualquer")



// Função com mais de um parâmetro
func imprimirSomaNumeros(numero1: Double, numero2: Double) {
    
    println("O resultado da soma é: \(numero1 + numero2)")
}

imprimirSomaNumeros(5, 7)



// Função com retorno
func somarNumeros(numero1: Double, numero2: Double) -> Double {
    
    return numero1 + numero2
}

let resultado = somarNumeros(3, 2)
println("O resultado da soma é: \(resultado)")



// Função pode ter o retorno ignorado
func imprimirESomarNumeros(numero1: Double, numero2: Double) -> Double {
    
    println("O resultado da soma é: \(numero1 + numero2)")
    return numero1 + numero2
}

imprimirESomarNumeros(2, 4)



// Função com retorno de valores múltiplos
func minMax(array: [Int]) -> (minimo: Int, maximo: Int) {
    
    var menorNumero = array[0]
    var maiorNumero = array[0]
    for valor in array[1..<array.count] {
        if valor < menorNumero {
            menorNumero = valor
        } else if valor > maiorNumero {
            maiorNumero = valor
        }
    }
    return (menorNumero, maiorNumero)
}

let extremos = minMax([4, 8, 3, 9, 11, 1, 2, 15])
println("O menor número é \(extremos.minimo) e o maior é \(extremos.maximo)")



// Função com retorno opcional
func concatenarStrings(array: [String]) -> String? {
    
    if array.isEmpty {
        return nil
    }
    
    var resultado = ""
    for valor in array {
        resultado += valor
    }
    return resultado
}

if let texto1 = concatenarStrings(["Eu vou ", "juntar as ", "strings"]) {
    println(texto1)
} else {
    println("Não foi possível concatenar os itens do array")
}

if let texto2 = concatenarStrings([]) {
    println(texto2)
} else {
    println("Não foi possível concatenar os itens do array")
}



// Nomeando parâmetros externos



// Utilizando nomes diferentes
func imprimirDetalhesFuncionario(nomeFuncionario nome: String, idadeFuncionario idade: Int) {
    
    println("\nNome: \(nome) \nIdade: \(idade)")
}

imprimirDetalhesFuncionario(nomeFuncionario: "João", idadeFuncionario: 29)



// Utilizando o mesmo nome
func imprimirDetalhesFuncionario(#nome: String, #idade: Int) {
    
    println("\nNome: \(nome) \nIdade: \(idade)")
}

imprimirDetalhesFuncionario(nome: "Maria", idade: 20)



// Parâmetros com valor padrão (Devem ser colocados no final)
func elevarNumero(numero: Double, potencia: Double = 2.0) -> Double {
    
    return pow(numero, potencia)
}

elevarNumero(5)

elevarNumero(2, potencia: 3)



// Parâmetros "Variadic"
// É considerado internamente como um array
func calcularMedia(numeros: Double...) -> Double {
    
    var soma = 0.0
    for numero in numeros {
        soma += numero
    }
    return soma / Double(numeros.count)
}

calcularMedia(1, 3)

calcularMedia(5, 10, 15, 20)



// Parâmetros Constantes x Variáveis



// Constante por padrão
func adicionarInterrogacoes1(texto: String) {
    
    //texto += "???"          // ERRO!
    println(texto)
}



// Alterando para variável
func adicionarInterrogacoes2(var texto: String) {
    
    texto += "???"
    println(texto)
}

var pergunta1 = "Quem é"
adicionarInterrogacoes2(pergunta1)
pergunta1



// Alterando para "inout"
func adicionarInterrogacoes2(inout texto: String) {
    
    texto += "???"
    println(texto)
}

var pergunta2 = "Quem é"
adicionarInterrogacoes2(&pergunta2)
pergunta2
