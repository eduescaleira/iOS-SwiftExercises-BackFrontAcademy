//
//  main.swift
//  Encapsulamento
//
//  Created by Eduardo Escaleira on 14/03/23.
//

import Foundation

class Carro {
    
    private var modelo: String
    
    init(modelo: String) {
        self.modelo = modelo
    }
    
    public func getModelo() -> String {
        return self.modelo
    }
    
    public func setModelo(modelo: String) {
        self.modelo = modelo
    }
    
}

var meuCarro: Carro = Carro(modelo: "BMW 320i")

print(meuCarro.getModelo())
meuCarro.setModelo(modelo: "La Ferrari")
print(meuCarro.getModelo())
