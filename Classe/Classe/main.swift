//
//  main.swift
//  Classe
//
//  Created by Eduardo Escaleira on 07/03/23.
//

import Foundation

// CRIAR 3 CLASSES COM 5 CARACTERÍSTICAS E 2 AÇÕES

class PessoaX {
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

class Pessoa {
    var nome: String
    var peso: Int
    var altura: Double
    
    init(nome: String, peso: Int, altura: Double) {
        self.nome = nome
        self.peso = peso
        self.altura = altura
    }
}

var eduardo: Pessoa = Pessoa(nome: "Eduardo", peso: 81, altura: 1.84)


// MARK: CÓDIGO DO CAIO

class Automovel {
    
    var cor: String = "Preto"
    var numeroDePortas: Int = 2
    var marca: String = "Honda"
    var eEletrico: Bool = false
    var quantidadeDePassageiros: Int = 5
    
    func ligarFarol() {
        print("O Farol está ligado")
    }
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
    
}

// Dar vida ao objeto -> quando geramos a instancia -> ()
var meuCarro: Automovel = Automovel()


// Construtores
// Criamos um construtor com a palavra reservada init e com isso indicamos TODOS OS VALORES DAS VARIAVEIS OU CONSTANTES QUE NÃO SE INICIAM COM VALOR

class Pessoa {
    
    var nome: String
    var altura: Double
    var peso: Double
    var tamanhoCalcado: Int
    
    
    init(nome: String, altura: Double, peso: Double, tamanhoCalcado: Int) {
        self.nome = nome
        self.altura = altura
        self.peso = peso
        self.tamanhoCalcado = tamanhoCalcado
    }
}

var caio: Pessoa = Pessoa(nome: "Caio", altura: 1.84, peso: 84, tamanhoCalcado: 44)
var matheus: Pessoa = Pessoa(nome: "Matheus", altura: 1.65, peso: 69, tamanhoCalcado: 40)
//print(caio.nome)
//print(caio.altura)
//print(caio.peso)

//  Referencia uma das principais caracteristicas de uma classe

print(caio.nome)
print(matheus.nome)

caio.nome = "Caio Fabrini"
matheus.nome = "Matheus Souza"

print(caio.nome)
print(matheus.nome)

// caio é igual a matheus
caio = matheus

print(caio.nome)
print(matheus.nome)


caio.nome = "Alberto"

print(caio.nome)
print(matheus.nome)

matheus.nome = "Jorge"

print(caio.nome)
print(matheus.nome)

