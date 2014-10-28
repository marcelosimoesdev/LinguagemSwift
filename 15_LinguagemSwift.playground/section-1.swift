// Linguagem Swift do básico ao avançado (Parte 15)


// Enumerations (Enumerações)



// Sintaxe definição

// 1a forma:
//enum OpcaoPagamento {
//    case Mensal
//    case Semestral
//    case Anual
//}

// 2a forma:
enum OpcaoPagamento {
    case Mensal, Semestral, Anual
}



// Declaração definindo o tipo explicitamente
var pagamento: OpcaoPagamento
pagamento = OpcaoPagamento.Mensal

// Declaração utilizando inferência de tipo
var pagamentoAluguel = OpcaoPagamento.Anual

// Quando já se sabe o tipo, pode omitir o nome do "enum"
pagamentoAluguel = .Semestral



// Uso de "enums" no "switch"

let valorTotal = 10_000.0
var desconto = 0.0

switch pagamentoAluguel {
case .Mensal:
    desconto = 2.5
case .Semestral:
    desconto = 5.0
case .Anual:
    desconto = 10.0
}

println("O valor do desconto será: \(valorTotal * (desconto/100))")

// Obs: É necessário colocar "case" para cada item do "enum", ou então definir um "default".
// Exemplo:

switch pagamentoAluguel {
case .Anual:
    desconto = 10.0
default:
    desconto = 0.0
}



// Associated Values (Valores associados)

enum Algarismo {
    case Arabico(Int)
    case Romano(String)
}

var numero = Algarismo.Arabico(15)

numero = .Romano("XV")

switch numero {
case .Arabico(let valor):
    println("O valor é \(valor)")
case .Romano(let valor):
    println("O valor é \(valor)")
}



// Raw Values

// 1a forma:
//enum Mes: Int {
//    case Janeiro = 1
//    case Fevereiro = 2
//    case Marco = 3
//    case Abril = 4
//    case Maio = 5
//    case Junho = 6
//    case Julho = 7
//    case Agosto = 8
//    case Setembro = 9
//    case Outubro = 10
//    case Novembro = 11
//    case Dezembro = 12
//}

// 2a forma:
enum Mes: Int {
    case Janeiro = 1, Fevereiro, Marco, Abril, Maio, Junho, Julho, Agosto, Setembro, Outubro, Novembro, Dezembro
}


let mesPagamento = Mes.Novembro
println("O número do mês de pagamento é: \(mesPagamento.rawValue)")

// Inicializando a partir do "Raw value"

let possivelMes = Mes(rawValue: 12)
if let mes = possivelMes {
    println("O mês foi encontrado")
} else {
    println("Não existe mês correspondente para este número")
}

