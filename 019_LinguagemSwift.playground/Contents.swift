// Site: marcelosimoesdev.com
// Instagram: @marcelosimoesdev

// Linguagem Swift do básico ao avançado (Parte 19)

// Properties (Propriedades) (2/2)

// - Property Wrappers
// - Definindo Valores Iniciais
// - Projected Values
// - Type Properties

import Foundation


// Property Wrappers

@propertyWrapper
struct EscalaAvaliacao {
    private var nota: Int = 0
    
    init() { self.nota = 0 }
    
    var wrappedValue: Int {
        get { return nota }
        set { nota = max(min(newValue, 5), 0) }
    }
}

struct PesquisaSatisfacao {
    @EscalaAvaliacao var audio: Int
    @EscalaAvaliacao var imagem: Int
    @EscalaAvaliacao var conteudo: Int
    @EscalaAvaliacao var didatica: Int
}

var pesquisa = PesquisaSatisfacao()
pesquisa.audio = 4
pesquisa.imagem = 4
pesquisa.conteudo = 7
pesquisa.didatica = 3

print("Áudio: \(pesquisa.audio)")
print("Imagem: \(pesquisa.imagem)")
print("Conteúdo: \(pesquisa.conteudo)")
print("Didática: \(pesquisa.didatica)")


// UpperCase

@propertyWrapper
struct CaixaAlta {
    private var texto: String = ""
    
    init() { self.texto = "" }
    
    var wrappedValue: String {
        get { texto.uppercased() }
        set { texto = newValue }
    }
}

struct Cadastro {
    @CaixaAlta var nome: String
    @CaixaAlta var apelido: String
}

var cadastro = Cadastro()
cadastro.nome = "joao"
cadastro.apelido = "joaozinho"

print("O apelido do \(cadastro.nome) é \(cadastro.apelido)")



// Definindo Valores Iniciais

@propertyWrapper
struct Escala {
    private var minimo: Int
    private var maximo: Int
    private var valor: Int
    
    var wrappedValue: Int {
        get { valor }
        set { valor = max(min(newValue, maximo), minimo) }
    }
    
    init() {
        minimo = 0
        maximo = 5
        valor = 0
    }
    
    init(wrappedValue: Int, minimo: Int, maximo: Int) {
        self.minimo = minimo
        self.maximo = maximo
        valor = max(min(wrappedValue, maximo), minimo)
    }
}

struct AvaliacaoFisica {
    @Escala var notaAlimentacao: Int
    @Escala var notaEnergia: Int
    @Escala var notaImunidade: Int
    @Escala var notaSono: Int
    @Escala var notaHumor: Int
    @Escala var notaFolego: Int
    @Escala(wrappedValue: 0, minimo: 0, maximo: 100) var percentualGordura: Int
    @Escala(wrappedValue: 1, minimo: 1, maximo: 12) var mesAvaliacao: Int
}

var avaliacao = AvaliacaoFisica()

avaliacao.notaAlimentacao = 3
avaliacao.notaEnergia = 4
avaliacao.notaImunidade = 1
avaliacao.notaSono = 100
avaliacao.notaHumor = 5
avaliacao.notaFolego = 1
avaliacao.percentualGordura = 15
avaliacao.mesAvaliacao = 7

print("Alimentação: \(avaliacao.notaAlimentacao)")
print("Energia: \(avaliacao.notaEnergia)")
print("Imunidade: \(avaliacao.notaImunidade)")
print("Sono: \(avaliacao.notaSono)")
print("Humor: \(avaliacao.notaHumor)")
print("Fôlego: \(avaliacao.notaFolego)")
print("Percentual Gordura: \(avaliacao.percentualGordura)")
print("Mês Avaliação: \(avaliacao.mesAvaliacao)")



// Projected Values

@propertyWrapper
struct ValorMonetario {
    private var valor: Double
    var projectedValue: String
    
    var wrappedValue: Double {
        get { valor }
        set {
                if let v = Double(String(format: "%.2f", newValue)) {
                    valor = v
                } else {
                    valor = newValue
                }
            
            projectedValue = "R$\(valor)"
            }
    }
    
    init() {
        valor = 0.0
        projectedValue = "R$\(valor)"
    }
}

struct Preco {
    @ValorMonetario var valorAVista: Double
    @ValorMonetario var valorParcelado: Double
}

var preco = Preco()
preco.valorAVista = 100.129
preco.valorParcelado = 115.472

print("Valor normal: \(preco.valorAVista)")
print("Valor normal: \(preco.valorParcelado)")
print("")
print("Projected Value: \(preco.$valorAVista)")
print("Projected Value: \(preco.$valorParcelado)")



// - Type Properties

struct AlgumStruct {
    static var valorArmazenado = "Qualquer valor"
    static var valorCalculado: String  { "Qualquer valor calculado" }
}

print(AlgumStruct.valorArmazenado)
print(AlgumStruct.valorCalculado)

var instanciaStruct = AlgumStruct()
//instanciaStruct.valorArmazenado // ERRO


enum QualquerEnumeration {
    static var valorArmazenado = "Qualquer valor"
    static var valorCalculado: String  { "Qualquer valor calculado" }
}

print(QualquerEnumeration.valorArmazenado)
print(QualquerEnumeration.valorCalculado)


class QualquerClasse {
    static var valorArmazenado = "Qualquer valor"
    static var valorCalculado: String  { "Qualquer valor calculado" }
    
    class var valorCalculadoQuePodeSerSobrescrito: Int {
        return 10
    }
}

print(QualquerClasse.valorArmazenado)
print(QualquerClasse.valorCalculado)
print(QualquerClasse.valorCalculadoQuePodeSerSobrescrito)
print("")

class ClasseFilha: QualquerClasse {
    override class var valorCalculadoQuePodeSerSobrescrito: Int {
        return 20
    }
}

print(ClasseFilha.valorArmazenado)
print(ClasseFilha.valorCalculado)
print(ClasseFilha.valorCalculadoQuePodeSerSobrescrito)
print("")











print(ClasseFilha.valorArmazenado)

ClasseFilha.valorArmazenado = "Valor alterado"

print(ClasseFilha.valorArmazenado)



//Exemplo prático

class CompeticaoSalto {
    static var recordeGeral: Double = 0.0
    var distanciaSalto: Double = 0 {
        didSet {
            if distanciaSalto > CompeticaoSalto.recordeGeral {
                CompeticaoSalto.recordeGeral = distanciaSalto
            }
        }
    }
}

print("Recorde: \(CompeticaoSalto.recordeGeral)")

var competidor1 = CompeticaoSalto()
competidor1.distanciaSalto = 2.3

print("Recorde: \(CompeticaoSalto.recordeGeral)")

var competidor2 = CompeticaoSalto()
competidor1.distanciaSalto = 2.5

print("Recorde: \(CompeticaoSalto.recordeGeral)")

var competidor3 = CompeticaoSalto()
competidor1.distanciaSalto = 2.2

print("Recorde: \(CompeticaoSalto.recordeGeral)")

