// Apple Swift Tutorial - Do básico ao avançado (Parte 08)

// Collection Types - Arrays



// Declaração

let paises1: Array<String> = ["México", "Japão", "Holanda"]

let paises2: [String] = ["Brasil", "Alemanha", "Espanha"]

let paises3 = ["França", "China", "Canadá"]

let todosPaises = paises1 + paises2 + paises3

let arrayComValoresRepetidos = [Int](count: 5, repeatedValue: 10)

var arrayVazio: [String] = []



// Mutabilidade x Imutabilidade (var x let) // NSArray - NSMutableArray



// Acessar valores, pesquisar

let primeiroItem = todosPaises[0]
let ultimoItem = todosPaises[todosPaises.count - 1]
let itemEspecifico = todosPaises[1]


todosPaises.count
todosPaises.isEmpty


if let indice = find(todosPaises, "Holanda") {
    println("\(todosPaises[indice]) encontrada no array")
}



// Iteração

for pais in todosPaises {
    println(pais)
}

println("\n")

for (indice, valor) in enumerate(todosPaises) {
    println("\(indice): \(valor)")
}



// Manipulação

var cores = ["Laranja", "Amarelo"]

cores.append("Azul")
//cores += "Verde" (No beta 5 do Xcode, o operador += não adiciona item mais. Apenas outro array.)
cores += ["Branco", "Preto"]
cores.insert("Roxo", atIndex: 1)

cores[1...3] = ["Vermelho"]

cores.removeAtIndex(1)
cores.removeLast()

cores.removeAll(keepCapacity: false)
cores = []
