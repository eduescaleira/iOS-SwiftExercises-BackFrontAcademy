//
//  main.swift
//  Struct
//
//  Created by Eduardo Escaleira on 15/03/23.
//

import Foundation

struct Pessoa {
    var nome: String
    var idade: Int
}


var caio: Pessoa = Pessoa(nome: "Caio", idade: 21)
var matheus: Pessoa = Pessoa(nome: "Matheus", idade: 30)

caio = matheus

caio.nome = "Alfredo"

print(caio.nome)
print(matheus.nome)
