// Site: marcelosimoesdev.com
// Instagram: @marcelosimoesdev

// Linguagem Swift do básico ao avançado (Parte 18)

// Properties (Propriedades) (1/2)


// Stored Properties (class ou structure)

struct PeriodoCurso {
    var anoInicio: Int
    let tempoDuracaoEmAnos: Int
}

var cursoDeQuatroAnos = PeriodoCurso(anoInicio: 2020, tempoDuracaoEmAnos: 4)

cursoDeQuatroAnos.anoInicio = 2025

//cursoDeQuatroAnos.tempoDuracaoEmAnos = 2 // ERRO, pois trata-se de uma constante.


// Declarada como constante

let cursoDeDoisAnos = PeriodoCurso(anoInicio: 2020, tempoDuracaoEmAnos: 2)

//cursoDeDoisAnos.anoInicio = 2025 // ERRO, pois a instância foi declarada como constante.



// Lazy Stored Properties

class ImportadorDados {
    var nomeArquivo = "dados.txt"
    
    // Inicializadores serão tratados em vídeos futuros
    init() {
        print("A classe de importação foi inicializada")
    }
    
    func importarArquivo() {
        
        print("O arquivo está sendo importado...")
    }
}

class GerenciadorDados {
    lazy var importador = ImportadorDados()
    var dados = [String]()
}

let gerenciador = GerenciadorDados()
gerenciador.dados.append("linha 1")
gerenciador.dados.append("linha 2")
gerenciador.dados.append("linha 3")

gerenciador.importador.importarArquivo()



// Stored Properties e Instance Variables

// Computed Properties (class, structure ou enum)

struct Numero {
    var numero = 0.0
    var numeroDobrado: Double {
        get { numero * 2 }
        set { numero = newValue / 2 }
    }
}

var numero1 = Numero(numero: 2)
print("O dobro de \(numero1.numero) é \(numero1.numeroDobrado)")

numero1.numero = 5
print("O dobro de \(numero1.numero) é \(numero1.numeroDobrado)")

numero1.numeroDobrado = 50

print("O número \(numero1.numero) foi recalculado a partir do número dobrado \(numero1.numeroDobrado)")



// Read-Only Computed Properties

struct Medidas {
    var altura = 0.0
    var peso = 0.0
    var imc: Double { peso / (altura * altura) }
}

var medidas = Medidas(altura: 1.75, peso: 67)
print("O IMC é \(medidas.imc)")

//medidas.imc = 30 //ERRO, pois a propriedade não possui o "setter"




// Property Observers

class ContaBancaria {
    var saldo = 0.0 {
        willSet {
            print("O saldo vai ser alterado de \(saldo) para \(newValue).")
        }
        didSet {
            if saldo < 0 {
                saldo = oldValue
                print("O saldo não foi alterado, pois não pode ser menor que 0.")
            } else {
                print("O saldo foi alterado de \(oldValue) para \(saldo).")
            }
        }
    }
}

let conta = ContaBancaria()
conta.saldo = 500.0
conta.saldo = 500.0
conta.saldo = -200.0

print(conta.saldo)
