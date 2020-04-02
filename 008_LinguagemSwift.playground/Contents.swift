// Apple Swift Tutorial - Do básico ao avançado (Parte 08)
// Collection Types - Arrays


// Declaração
let paises1: Array<String> = ["México", "Japão", "Holanda"]

let paises2: [String] = ["Brasil", "Alemanha", "Espanha"]

let paises3 = ["França", "China", "Canadá"]

let todosPaises = paises1 + paises2 + paises3

let arrayComValoresRepetidos = Array(repeating: 10, count: 5)

var arrayVazio: [String] = []



// Mutabilidade x Imutabilidade (var x let) // NSArray - NSMutableArray


// Acessar valores, pesquisar
let primeiroItem = todosPaises[0]
let ultimoItem = todosPaises[todosPaises.count - 1]
let itemEspecifico = todosPaises[1]


todosPaises.count
todosPaises.isEmpty


if let indice = todosPaises.firstIndex(of: "Holanda") {
    print("\(todosPaises[indice]) encontrada no array")
}



// Iteração
for pais in todosPaises {
    print(pais)
}

print("\n")

for (indice, valor) in todosPaises.enumerated() {
    print("\(indice): \(valor)")
}



// Manipulação
var cores = ["Laranja", "Amarelo"]

cores.append("Azul")
//cores += "Verde" (No beta 5 do Xcode, o operador += não adiciona item mais. Apenas outro array.)
cores += ["Branco", "Preto"]
cores.insert("Roxo", at: 1)

cores[1...3] = ["Vermelho"]

cores.remove(at: 1)
cores.removeLast()

cores.removeAll(keepingCapacity: false)
cores = []
