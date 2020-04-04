// Site: marcelosimoesdev.com
// Instagram: @marcelosimoesdev

// Apple Swift Tutorial - Do básico ao avançado (Parte 03)
// Type Aliases
typealias IntSemSinal = UInt16
let idade: IntSemSinal = 40



// Booleans
var estouComSono = true

if estouComSono {
    print("Preciso dormir!")
} else {
    print("Dormir pra quê?!")
}



// Tuples
let ultimoLancamentoApple = (2014, "iOS 8")

let (ano, lancamento) = ultimoLancamentoApple
print("Em \(ano), a Apple lançou o \(lancamento)")

let (somenteAno, _) = ultimoLancamentoApple
print("O último lançamento da Apple foi em \(ano)")

print("Ano: \(ultimoLancamentoApple.0)")
print("Lançamento: \(ultimoLancamentoApple.1)")

let dadosConta = (agencia: 12345, conta: 12345678, tipo: "Conta corrente")
print("Agência: \(dadosConta.agencia)")
print("Conta: \(dadosConta.conta)")
print("Tipo: \(dadosConta.tipo)")
