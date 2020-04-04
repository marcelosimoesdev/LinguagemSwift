// Site: marcelosimoesdev.com
// Instagram: @marcelosimoesdev

// Apple Swift Tutorial - Do básico ao avançado (Parte 04)
// Conceitos:
// Optionals
var valor1: Int
var valor2: Int?

valor1 = 1
valor2 = 2

//let total = valor1 + valor2
if valor2 != nil {
    let total = valor1 + valor2!
} else {
    print("Não possui valor")
}


if let valorGarantido = valor2 {
    let total = valor1 + valorGarantido
}
