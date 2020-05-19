// Site: marcelosimoesdev.com
// Instagram: @marcelosimoesdev

// Linguagem Swift do básico ao avançado (Parte 22)

// Inheritance (Herança)


// Base Class

class EquipamentoEletronico {
    private var _ligado = false
    
    final var ligado: Bool {
        get {
            return _ligado
        }
    }
    
    var detalhes: String {
        return "==========================================" +
               "\nEstado: \(ligado ? "ligado" : "desligado")"
    }
    
    func ligar() {
        _ligado = true
        print("Equipamento ligado.")
    }
    
    func desligar() {
        _ligado = false
        print("Equipamento desligado.")
    }
}

var equipamento = EquipamentoEletronico()
equipamento.ligar()
equipamento.desligar()
print(equipamento.detalhes)


// Subclass

class Computador: EquipamentoEletronico {
    var memoriaGB = 0.0
    var tamanhoDiscoGB = 0.0
    var fonteConectada = false
    
    override var detalhes: String {
        return super.detalhes +
               "\nMemória (GB): \(memoriaGB)" +
               "\nTamanho Disco (GB): \(tamanhoDiscoGB)" +
               "\nFonte: \(fonteConectada ? "conectada" : "desconectada")"
    }
    
    func formatar() {
        if ligado {
            print("Computador formatado.")
        } else {
            print("Não foi possível formatar. Computador desligado.")
        }
    }
}

var computador = Computador()
computador.memoriaGB = 16
computador.tamanhoDiscoGB = 512
computador.ligar()
computador.formatar()
print(computador.detalhes)



class Desktop: Computador {
    var corGabinete = ""
    
    override var detalhes: String {
        return super.detalhes +
               "\nCor Gabinete: \(corGabinete)"
    }
    
    override func ligar() {
        if fonteConectada {
            super.ligar()
        } else {
            print("Não foi possível ligar o equipamento. Fonte desligada.")
        }
    }
}

var desktop = Desktop()
desktop.memoriaGB = 32
desktop.tamanhoDiscoGB = 1024
desktop.corGabinete = "Preto"
print(desktop.detalhes)
desktop.fonteConectada = true
desktop.ligar()


class Notebook: Computador {
    var percentualCargaBateria = 0.0
    
    override var detalhes: String {
        return super.detalhes +
               "\nCarga Bateria: \(percentualCargaBateria)%"
    }
    
    override func ligar() {
        if fonteConectada || percentualCargaBateria > 0 {
            super.ligar()
        } else {
            print("Não foi possível ligar o equipamento. Fonte desligada e bateria descarregada.")
        }
    }
}

var notebook = Notebook()
notebook.memoriaGB = 16
notebook.tamanhoDiscoGB = 512
notebook.percentualCargaBateria = 0
print(notebook.detalhes)
notebook.ligar()
