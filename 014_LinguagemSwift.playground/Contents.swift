// Site: marcelosimoesdev.com
// Instagram: @marcelosimoesdev

// Linguagem Swift do básico ao avançado (Parte 14)
// Closures


func decrescente(v1: Int, v2: Int) -> Bool {
    
    return v1 > v2
}

let numeros = [4, 1, 3, 2, 5]

let numerosDecrescentes = numeros.sorted(by: decrescente)



// Sintaxe Closure
/*
    { ("parametros") -> "tipo retorno" in
        "código"
    }
*/



// Observações sobre Closures:
    // Não possuem um nome como as funções.
    // Não podem definir valor padrão para parâmetros.


// Exemplo
let numerosDecrescentes1 = numeros.sorted(by: { (v1: Int, v2: Int) -> Bool in return v1 > v2 } )

// Inferindo o tipo dos parâmetros e retorno
let numerosDecrescentes2 = numeros.sorted(by: { v1, v2 in return v1 > v2 } )

// Removendo o "return"
let numerosDecrescentes3 = numeros.sorted(by: { v1, v2 in v1 > v2 } )

// Removendo parâmetros e "in"
let numerosDecrescentes4 = numeros.sorted(by: { $0 > $1 } )

// Simplificando mais ainda
let numerosDecrescentes5 = numeros.sorted(by: >)



// Trailing Closures
import Foundation

func executarClosureApos(tempo: UInt32, closure: () -> ()) {

    print("Aguardando \(tempo)s")
    sleep(tempo)
    closure()
}

// Passando a closure DENTRO dos parênteses
executarClosureApos(tempo: 1, closure: {
    print("Dentro")
})

// Passando a closure FORA dos parênteses
executarClosureApos(tempo: 2) {
    print("Fora")
}



// Função só com um parâmetro do tipo "closure" pode omitir o ()
func funcaoSoComUmParametro(closure: () -> ()) {
    closure()
}

funcaoSoComUmParametro {
    print("Qualquer coisa...")
}



// Contexto
func criarIncrementador(_ valorIncremento: Int) -> () -> Int {
    
    var valorTotal = 0
    
    func incrementador() -> Int {
        valorTotal += valorIncremento
        return valorTotal
    }
    
    return incrementador
}

let incrementoDeTres = criarIncrementador(3)
let outroIncrementoDeTres = criarIncrementador(3)

incrementoDeTres() // 3
incrementoDeTres() // 6
incrementoDeTres() // 9
outroIncrementoDeTres() // 3
outroIncrementoDeTres() // 6
outroIncrementoDeTres() // 9


// Closures são passados por referência
let incrementoDeCinco = criarIncrementador(5)
let mesmoIncrementoDeCinco = incrementoDeCinco

incrementoDeCinco() // 5
incrementoDeCinco() // 10
incrementoDeCinco() // 15
mesmoIncrementoDeCinco() // 20
mesmoIncrementoDeCinco() // 25
mesmoIncrementoDeCinco() // 30
incrementoDeCinco() // 35
