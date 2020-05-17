// Site: marcelosimoesdev.com
// Instagram: @marcelosimoesdev

// Linguagem Swift do básico ao avançado (Parte 21)

// Subscripts


// Array
var listaCompra = ["Arroz", "Feijão", "Batata", "Suco"]

print(listaCompra[1])
print(listaCompra[3])


// Dictionary
var estadosBrasileiros = ["RJ": "Rio de Janeiro", "MG": "Minas Gerais", "PR": "Paraná", "SP": "São Paulo"]

print(estadosBrasileiros["MG"]!)
print(estadosBrasileiros["PR"]!)






enum Mes: Int {
    case Janeiro = 1, Fevereiro, Marco, Abril, Maio, Junho, Julho, Agosto, Setembro, Outubro, Novembro, Dezembro
    
    static subscript(indice: Int) -> Mes {
        return Mes(rawValue: indice)!
    }
    
    static subscript(mes: Mes) -> Int {
        return mes.rawValue
    }
}

let abril = Mes[4]
print(abril)

let junho = Mes[Mes.Junho]
print(junho)




struct Teste {
    subscript(str: String) -> Int {
        return str.count
    }
    subscript(i: Int) -> String {
        
        var str = ""
        
        for i in 1...i {
            str += String(i)
        }
        
        return str
    }
}


let t = Teste()

print(t["TEXTO"])
print(t[5])





extension String {
    subscript(posicao: Int) -> Character {
        self[index(startIndex, offsetBy: posicao)]
    }
    
    subscript(inicio: Int, fim: Int) -> String {
        let i = self.index(self.startIndex, offsetBy: inicio)
        let f = self.index(i, offsetBy: fim - inicio)
        return String(self[i...f])
    }
}


let str = "012345"

print(str[3])
print(str[2, 5])
