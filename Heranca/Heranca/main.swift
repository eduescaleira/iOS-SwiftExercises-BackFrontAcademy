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




