// Site: marcelosimoesdev.com
// Instagram: @marcelosimoesdev

// Apple Swift Tutorial - Do básico ao avançado (Parte 07)
// Strings e Caracteres


// String Literals
let minhaString = "Strings literais são simplesmente uma sequência fixa de caracteres"



// Caracteres especiais
let barraInvertida = "Cidade\\Estado"
let tab = "Nome:\tJoão"
let quebraLinha = "Nome:\nJoão"
let aspasDuplas = "\"entre aspas\""



// Unicode
let unicode1 = "\u{26}"
let unicode2 = "\u{2655}"
let unicode3 = "\u{00002656}"
let unicode4 = "\u{1F496}"



// Inicializando uma string vazia
let stringVazia = ""
let outraStringVazia = String()

if stringVazia.isEmpty {
    print("A string está vazia")
}



// Mutabilidade de string (var x let) // NSString - NSMutableString
var stringMutavel = "Esta é "
stringMutavel += "uma string mutável"

let stringImutavel = "Esta string é imutável"
//stringImutavel += "Por isso, ocorre erro nesta linha"


// Em Swift, Strings são tipos por valor. Em Objective-C era por referência
var string1 = "valor original"
var string2 = string1
string2 = "valor alterado"

string1
string2



// Caracteres
for caracter in "Brasil" {
    print(caracter)
}

let cifrao: Character = "$"

let cidade = "Barcelona"
print("cidade possui \(cidade.count) caracteres")



// Concatenar strings e caracteres
var texto = "Quem é"
var interrogacao: Character = "?"

texto.append(interrogacao)
print(texto)



// Interpolação de strings
let salario = 1_200.00
let quantidadeMeses = 6

print("Em \(quantidadeMeses) meses eu ganho R$\(salario * Double(quantidadeMeses))")



// Comparação de strings
let stringUm = "olá"
let stringDois = "olá"

stringUm == stringDois



// hasPrefix / hasSuffix
let esporte = "Futebol de campo"

esporte.hasPrefix("Futebol")
esporte.hasSuffix("campo")



// Uppercase e Lowercase
// *** Estes métodos foram removidos na versão do beta 4 do Xcode.
let nome = "Pedro Álvares Cabral"

//nome.lowercaseString
//nome.uppercaseString
