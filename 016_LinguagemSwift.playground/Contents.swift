// Site: marcelosimoesdev.com
// Instagram: @marcelosimoesdev

// Linguagem Swift do básico ao avançado (Parte 16)

// Enumerations (Enumerações 2/2)


// "Enumeration Cases"

enum Fabricante: CaseIterable {
    case Fiat, Ford, Volkswagen, Chevrolet, Toyota, Honda, Renault
}

let totalFabricantes = Fabricante.allCases.count

print("Existem \(totalFabricantes) fabricantes disponíveis.")



for fabricante in Fabricante.allCases {
    print(fabricante)
}

















// Raw Values implícitos

// Int
enum MesInt: Int {
    case Janeiro = 1, Fevereiro, Marco, Abril, Maio, Junho, Julho, Agosto, Setembro, Outubro, Novembro, Dezembro
}

print(MesInt.Agosto.rawValue) // 8


enum MesString: String {
    case Janeiro, Fevereiro, Marco, Abril, Maio, Junho, Julho, Agosto, Setembro, Outubro, Novembro, Dezembro
}

print(MesString.Agosto.rawValue) // Agosto














// Enum recursivo


// Primeira forma de declaração
//enum ExpressaoAritimetica1 {
//    case numero(Int)
//    indirect case adicao(ExpressaoAritimetica, ExpressaoAritimetica)
//    indirect case subtracao(ExpressaoAritimetica, ExpressaoAritimetica)
//    indirect case multiplicacao(ExpressaoAritimetica, ExpressaoAritimetica)
//    indirect case divisao(ExpressaoAritimetica, ExpressaoAritimetica)
//}

// Segunda forma de declaração
indirect enum ExpressaoAritimetica {
    case numero(Int)
    case adicao(ExpressaoAritimetica, ExpressaoAritimetica)
    case subtracao(ExpressaoAritimetica, ExpressaoAritimetica)
    case multiplicacao(ExpressaoAritimetica, ExpressaoAritimetica)
    case divisao(ExpressaoAritimetica, ExpressaoAritimetica)
}

func calcular(_ expressao: ExpressaoAritimetica) -> Int {
    
    switch expressao {
    case let .numero(valor):
        return valor
    case let .adicao(expressao1, expressao2):
        return calcular(expressao1) + calcular(expressao2)
    case let .subtracao(expressao1, expressao2):
        return calcular(expressao1) - calcular(expressao2)
    case let .multiplicacao(expressao1, expressao2):
        return calcular(expressao1) * calcular(expressao2)
    case let .divisao(expressao1, expressao2):
        return calcular(expressao1) / calcular(expressao2)
    }
}

let ex1 = ExpressaoAritimetica.numero(5)
let ex2 = ExpressaoAritimetica.numero(3)
let ex3 = ExpressaoAritimetica.adicao(ex1, ex2)
let ex4 = ExpressaoAritimetica.multiplicacao(ex1, ex3)

calcular(ex1)
calcular(ex3)
calcular(ex4)
