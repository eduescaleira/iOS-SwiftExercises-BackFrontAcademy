//
//  main.swift
//  Classe
//
//  Created by Eduardo Escaleira on 07/03/23.
//

import Foundation

// CRIAR 3 CLASSES COM 5 CARACTERÍSTICAS E 2 AÇÕES

class Pessoa {
    var eCareca: Bool = true
    var homem: Bool = true
    var altura: Double = 1.84
    var peso: Double = 80.5
    var tamanhoDoPe: Int = 44
    
    func caminhar() {
        print("A pessoa caminhou")
    }
    
    func sentar() {
        print("A pessoa sentou")
    }
    
}

class Barco {
    var tamanhoEmPes: Double = 40
    var flutua: Bool = true
    var peso: Double = 400.30
    var cor: String = "Vermelho"
    var velocidadeMaxima: Double = 30
    
    func acelerar() {
        print("O barco acelerou")
    }
    
    func jogarAncora() {
        print("Ancora jogada!")
    }
    
    
}

class Aaeronave {
    var modeloDaAeronave: String = "R44"
    var fabricante: String = "Robinson"
    var monomotor: Bool = true
    var quantidadePilotos: Int = 1
    var tipoDeCombustivel: String = "AVGAS"
    
    func checkDeAcionamento(){
        print("Iniciado o check de acionamento")
    }
    
    func testarRodaLivre() {
        print("Teste de roda Livre iniciado")
    }
    
}
