// Type Aliases

typealias IntSemSinal = UInt16
let idade: IntSemSinal = 40



// Booleans

var estouComSono = true

if estouComSono {
    println("Preciso dormir!")
} else {
    println("Dormir pra quê?!")
}



// Tuples

let ultimoLancamentoApple = (2014, "iOS 8")

let (ano, lancamento) = ultimoLancamentoApple
println("Em \(ano), a Apple lançou o \(lancamento)")

let (somenteAno, _) = ultimoLancamentoApple
println("O último lançamento da Apple foi em \(ano)")

println("Ano: \(ultimoLancamentoApple.0)")
println("Lançamento: \(ultimoLancamentoApple.1)")

let dadosConta = (agencia: 12345, conta: 12345678, tipo: "Conta corrente")
println("Agência: \(dadosConta.agencia)")
println("Conta: \(dadosConta.conta)")
println("Tipo: \(dadosConta.tipo)")
