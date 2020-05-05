// Site: marcelosimoesdev.com
// Instagram: @marcelosimoesdev

// Linguagem Swift do básico ao avançado (Parte 20)

// Methods (Métodos)

// - Instance Methods
// - The self Property
// - Modifying Value Types from Within Instance Methods
// - Assigning to self Within a Mutating Method
// - Type Methods


// Instance Methods

class Game {
    
    var players = [String: Int]()
    
    func addPlayer(name: String) {
        
        if players[name] == nil {
            self.players[name] = 0
        }
    }
    
    func removePlayer(name: String) {
        
        self.players[name] = nil
    }
    
    func penalizePlayers(players: [String]) {
        
        for name in players {
            
            if let penaltiesAmount = self.players[name] {
                self.players[name] = penaltiesAmount + 1
                
                if penaltiesAmount == 5 {
                    removePlayer(name: name)
                }
            }
        }
    }
}

var game = Game()

game.addPlayer(name: "Ronaldo")
game.addPlayer(name: "Pelé")
game.addPlayer(name: "Neymar")
game.addPlayer(name: "Messi")
print(game.players)


game.penalizePlayers(players: ["Neymar", "Messi"])
game.penalizePlayers(players: ["Neymar"])
print(game.players)


game.removePlayer(name: "Ronaldo")
print(game.players)



// Modifying Value Types from Within Instance Methods

struct Counter {
    var count = 0
    
    mutating func increment() {
        count += 1
    }
    
    mutating func restart() {
        self = Counter(count: 0)
    }
}

var counter1 = Counter(count: 0)
print(counter1.count)

counter1.increment()
counter1.increment()
print(counter1.count)

counter1.restart()
print(counter1.count)



enum DifficultyLevel {
    case easy, medium, advanced
    
    mutating func nextLevel() {
        switch self {
        case .easy:
            self = .medium
        case .medium:
            self = .advanced
        case .advanced:
            self = .easy
        }
    }
}

var level = DifficultyLevel.easy
print(level)

level.nextLevel()
print(level)

level.nextLevel()
print(level)

level.nextLevel()
print(level)



// Type Methods

class Programmer {
    
    class func writeSomeCode() {
        print("Hello world!")
    }
}

Programmer.writeSomeCode()


class AdvancedProgrammer: Programmer {

    override class func writeSomeCode() {
        print("I know how to do more things than a simple 'Hello World', such as a sum: \(8 * 5)")
    }
}

AdvancedProgrammer.writeSomeCode()



class Disk {
    static let totalSpaceInBytes = 1024
    static var usedSpaceInBytes = 0

    static func availableSpace() -> Int {
        return totalSpaceInBytes - usedSpaceInBytes
    }
    
    func allocFile(size: Int) {
        if Disk.availableSpace() >= size {
            Disk.usedSpaceInBytes += size
            print("File saved.")
        } else {
            print("Insufficient space.")
        }
    }
}


class File {
    var disk = Disk()
    var fileName: String
    var fileSize: Int
    
    init(name: String, size: Int) {
        fileName = name
        fileSize = size
    }
    
    func saveFile() {
        disk.allocFile(size: fileSize)
    }
}

var file = File(name: "Doc1.txt", size: 512)
file.saveFile()

var file2 = File(name: "Doc1.txt", size: 512)
file.saveFile()

var file3 = File(name: "Doc1.txt", size: 512)
file.saveFile()



import UIKit

struct Color {
    static func Background() -> UIColor {
        UIColor(red: 1, green: 0, blue: 0, alpha: 1)
    }

    static func TitleText() -> UIColor {
        UIColor(red: 0, green: 0, blue: 1, alpha: 1)
    }

    static func NormalText() -> UIColor {
        UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
}

let background = Color.Background()
let title = Color.TitleText()
let text = Color.NormalText()

