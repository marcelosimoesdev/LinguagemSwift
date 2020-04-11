// Site: marcelosimoesdev.com
// Instagram: @marcelosimoesdev

// Linguagem Swift do básico ao avançado (Parte 17)

// Structures e Classes


// Sintaxe de definição

// CONVENÇÃO:
// UpperCamelCase para nome das classes e scructures
// lowerCamelCase para nome de métodos e propriedades

struct Medidas {
    var altura = 0.0
    var peso = 0.0
}

class Pessoa {
    var primeiroNome: String?
    var ultimoNome: String?
    var idade = 0
    var medidas = Medidas()
}


// Declaração de uma instância

// Novas instâncias com os valores padrões das propriedades
let medidasDeAlguem = Medidas()
let algumaPessoa = Pessoa()


// Acessando as propriedades
print("A idade de algumaPessoa é \(algumaPessoa.idade).")

// Subpropriedades
print("A altura de algumaPessoa é \(algumaPessoa.medidas.altura).")


// Atribuindo valor

algumaPessoa.idade = 22
algumaPessoa.medidas.altura = 1.85

print("A idade de algumaPessoa é \(algumaPessoa.idade).")
print("A altura de algumaPessoa é \(algumaPessoa.medidas.altura).")


// Memberwise Initializers (Structures)

let medidaPedro = Medidas(altura: 1.73, peso: 69.4)

print("O Pedro tem \(medidaPedro.altura) de altura e \(medidaPedro.peso) de peso.")

//let p = Pessoa()


// Structures e Enumerations são tipos por valor

let medida1 = Medidas(altura: 1.80, peso: 90)
var medida2 = medida1

print("Medida 1 - altura: \(medida1.altura), peso: \(medida1.peso)")
print("Medida 2 - altura: \(medida2.altura), peso: \(medida2.peso)")

medida2.altura = 1.50
medida2.peso = 50.0

print("Medida 1 - altura: \(medida1.altura), peso: \(medida1.peso)")
print("Medida 2 - altura: \(medida2.altura), peso: \(medida2.peso)")


// Enumerations também se comportam da mesma maneira.

enum Veiculo {
    case Carro, Moto
}

let veiculo1 = Veiculo.Carro
var veiculo2 = veiculo1

print("Veículo 1: \(veiculo1)")
print("Veículo 2: \(veiculo2)")

veiculo2 = .Moto

print("Veículo 1: \(veiculo1)")
print("Veículo 2: \(veiculo2)")


// Classes são tipos por referência

let pessoa1 = Pessoa()
pessoa1.primeiroNome = "Augusto"
pessoa1.ultimoNome = "Silva"
pessoa1.idade = 45

let pessoa2 = pessoa1

print("Nome: \(pessoa1.primeiroNome!) \(pessoa1.ultimoNome!) - Idade: \(pessoa1.idade)")
print("Nome: \(pessoa2.primeiroNome!) \(pessoa2.ultimoNome!) - Idade: \(pessoa2.idade)")

pessoa2.primeiroNome = "José"
pessoa2.ultimoNome = "Pereira"
pessoa2.idade = 60

print("Nome: \(pessoa1.primeiroNome!) \(pessoa1.ultimoNome!) - Idade: \(pessoa1.idade)")
print("Nome: \(pessoa2.primeiroNome!) \(pessoa2.ultimoNome!) - Idade: \(pessoa2.idade)")


// Identity Operators

let pessoaA = Pessoa()
let pessoaB = Pessoa()


if pessoaA === pessoaB {
    print("A e B são iguais")
}

if pessoaA !== pessoaB {
    print("A e B são diferentes")
}

// Não confundir == com ===
// == significa que possuem o mesmo valor.
// === significa que se trata da mesma instância de um objeto.
