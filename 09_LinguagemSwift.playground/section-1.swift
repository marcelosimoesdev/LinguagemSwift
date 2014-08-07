// Apple Swift Tutorial - Do básico ao avançado (Parte 09)

// Collection Types - Dictionaries (Dicionários)



// Declaração

let primeiroTrimestre: Dictionary<Int, String> = [1: "Janeiro", 2: "Fevereiro", 3: "Março"]

let segundoTrimestre: [Int: String] = [4: "Abril", 5: "Maio", 6: "Junho"]

var estadosBrasileiros = ["MG": "Minas Gerais", "PR": "Paraná", "SP": "São Paulo"]

var dicionarioVazio1 = Dictionary<Int, String>()
var dicionarioVazio2 = [Int: String]()



// Acessar valores

if let nomeEstado = estadosBrasileiros["GO"] {
    println("Estado encontrado: \(nomeEstado)")
} else {
    println("Estado não está no dicionário")
}


println("Total de itens: \(estadosBrasileiros.count)")



// Incluir/Alterar valores

estadosBrasileiros["AM"] = "Que sigla é essa mesmo?"     // Insere um novo item
estadosBrasileiros["AM"] = "Amapá?"                      // Altera item existente


// updateValue -> Se a chave continha algum valor, o valor antigo é retornado.

if let valorAnterior = estadosBrasileiros.updateValue("Amazonas", forKey: "AM") {
    println("Valor anterior: \(valorAnterior)")
    println("Novo valor: " + estadosBrasileiros["AM"]!)
}



// Excluir valores

estadosBrasileiros
estadosBrasileiros["AM"] = nil
estadosBrasileiros


// removeValueForKey -> Se a chave continha valor, o valor removido é retornado.

if let valorRemovido = estadosBrasileiros.removeValueForKey("SP") {
    println("O valor removido foi: \(valorRemovido)")
} else {
    println("SP não existe no dicionário")
}


// Limpar dicionário

//estadosBrasileiros.removeAll(keepCapacity: false)
//estadosBrasileiros = [:]



// Iteração

for (siglaEstado, descricaoEstado) in estadosBrasileiros {
    println("\(siglaEstado): \(descricaoEstado)")
}

println("\n")

for siglaEstado in estadosBrasileiros.keys {
    println("Sigla: \(siglaEstado)")
}

println("\n")

for descricaoEstado in estadosBrasileiros.values {
    println("Descrição: \(descricaoEstado)")
}
