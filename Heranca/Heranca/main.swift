//
//  main.swift
//  Heranca
//
//  Created by Eduardo Escaleira on 09/03/23.
//

import Foundation

// MARK: HERANÇA
// Classe pai / Super Class

class Animal {
    
    var idade: Int = 10
    
    func comer() {
        print("O animal está comendo!")
    }
}

class Cavalo: Animal {
    
}

var meuCavalo: Cavalo = Cavalo()
meuCavalo.comer()


// classe pai

class Pessoa {
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
}

class Caio: Pessoa {
    var altura: Double
    
    init(altura: Double, nome: String) {
        self.altura = altura
        super.init(nome: nome) // usado quando a classe pai tem um construtor
    }
    
}

//var meuNome: Caio = Caio(nome: "Caio")



// DESAFIO PARA PASSAR PARA CASA

// Criar uma classe pai na qual tenha 3 caracteristicas e 2 ações.
// Uma das classes filhas não deve conter construtor.

class Aircraft {
    var type: String
    var capacity: Int
    var range: Double
    
    func startEngine() {
        print("Engines on!")
    }
    
    func depart() {
        print("Departed!")
    }
    
    init(type: String, capacity: Int, range: Double) {
        self.type = type
        self.capacity = capacity
        self.range = range
    }
}

// 2. Criar 2 classes filhas distintas, porem ambas vão herdar da classe pai(super).
// Cada classe filha terá 3 caracteristicas especificas.
// Uma das classes filhas deve conter contrutor indicando os valores de todas as suas propriedades.

class Robinson22: Aircraft {
    var fuelCapacity: Double
    var pilots: Int
    var fuelType: String
    
    init(fuelCapacity: Double, pilots: Int, fuelType: String, type: String, capacity: Int, range: Double) {
        self.fuelCapacity = fuelCapacity
        self.pilots = pilots
        self.fuelType = fuelType
        super.init(type: type, capacity: capacity, range: range)
    }
    
}

class CJ2: Aircraft {
    var wings: Int = 2
    var maxCeilling: Double = 45000
    var cruiseSpeed: Double = 450.80
    
}

//var r22: Robinson22 = Robinson22(fuelCapacity: <#T##Double#>, pilots: <#T##Int#>, fuelType: <#T##String#>, type: <#T##String#>, capacity: <#T##Int#>, range: <#T##Double#>)
