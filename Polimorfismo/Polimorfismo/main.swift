//
//  main.swift
//  Polimorfismo
//
//  Created by Eduardo Escaleira on 14/03/23.
//

import Foundation

// MARK: - POLIMORFISMO


class Centauro {
    func totalDeDesconto(valorTotal: Double) -> Double {
        return valorTotal * 0.3
    }
}

class Loja1: Centauro {
    override func totalDeDesconto(valorTotal: Double) -> Double {
        return valorTotal * 0.1
    }
}

class Loja2: Centauro {
    
}


var lojaDoCaio: Loja1 = Loja1()
//print(lojaDoCaio.totalDeDesconto(valorTotal: 1000))


var lojaDoBruno: Loja2 = Loja2()
//print(lojaDoBruno.totalDeDesconto(valorTotal: 1000))


// MARK: - DESAFIO POLIMORFISMO
// Um vendedor de loja possui um nome, idade, cpf e saldo em conta. Vende em sua loja ternos, vestidos e bonés, definir um método vender(quantidadeDePecas: Int, tipoDePeca: String).
// - Cada terno custa R$400,00 e caso o cliente compre 3 ou mais, ele recebe 50% de desconto em cada terno.
// - Cada vestido custa R$900,00 e caso o cliente compre 5 ele ganha um véu de noiva de brinde.
// ENCAPSULE TODOS OS MÉTODOS NECESSÁRIOS

class Vendedor {
    private var nome: String
    private var idade: Int
    private var cpf: String
    private var saldoEmConta: Double
    
    init(nome: String, idade: Int, cpf: String, saldoEmConta: Double) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
    }
    
    func vender(quantidadeDePecas: Int, tipoDePeca: String) {
        let terno: Double = 400
        let vestido: Double = 900
        var valorTotal: Double = 0
        
        if tipoDePeca == "vestido" && quantidadeDePecas >= 5 {
            valorTotal = Double(quantidadeDePecas) * vestido
            print("Parabéns, você comprou \(quantidadeDePecas) vestidos no valor total de R$\(valorTotal) e por isso ganhou um véu de noiva!")
       
        } else if tipoDePeca == "terno" && quantidadeDePecas >= 3 {
            valorTotal = (Double(quantidadeDePecas) * terno) * 0.5
            print("Parabéns, você comprou \(quantidadeDePecas) ternos e por isso ganhou 50% de desconto em cada unidade! O valor total gasto foi de R$\(valorTotal).")
            
        } else if tipoDePeca == "terno" {
            valorTotal = Double(quantidadeDePecas) * terno
            print("Você comprou \(quantidadeDePecas) ternos no valor total de R$\(valorTotal). Caso compre mais \(3 - quantidadeDePecas) terno(s), você ganhará 50% de desconto em cada unidade!")
            
        } else {
            valorTotal = Double(quantidadeDePecas) * vestido
            print("Você comprou \(quantidadeDePecas) vestidos no valor total de R$\(valorTotal). Caso compre mais \(5 - quantidadeDePecas) vestido, você ganhará um véu de noiva!")
        }
    }
}


var eduardo: Vendedor = Vendedor(nome: "Eduardo", idade: 35, cpf: "36930145823", saldoEmConta: 4000.00)
//print(eduardo.vender(quantidadeDePecas: 4, tipoDePeca: "vestido"))
//print(eduardo.vender(quantidadeDePecas: 2, tipoDePeca: "terno"))
//print(eduardo.vender(quantidadeDePecas: 2, tipoDePeca: "camiseta"))



// MARK: - EXERCÍCIO VENDEDOR

class Funcionario {
    var nome: String
    var salario: Double
    var cpf: Int
    
    init(nome: String, salario: Double, cpf: Int) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
  
    public func bonusAnual(salario: Double) -> Double {
        return (salario * 12) * 0.05 // 5% como default
    }
    // func bonus anual baseado no salario
}

class Programador: Funcionario {
    
    var plataformaDeTrabalho: String
    
    init(plataformaDeTrabalho: String, nome: String, salario: Double, cpf: Int) {
        self.plataformaDeTrabalho = plataformaDeTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override public func bonusAnual(salario: Double) -> Double {
        return (salario * 12) * 0.20  // 20% bonus anual
    }
}

class Designer: Funcionario {
    override public func bonusAnual(salario: Double) -> Double {
        return (salario * 12) * 0.15  // 20% bonus anual
    }
}

var eduardoEscaleira: Programador = Programador(plataformaDeTrabalho: "iOS", nome: "Eduardo", salario: 8000, cpf: 93019301932)
print(eduardoEscaleira.bonusAnual(salario: eduardoEscaleira.salario))
var eduardoBraga: Designer = Designer(nome: "Braga", salario: 1000, cpf: 123819203812)
print(eduardoBraga.bonusAnual(salario: eduardoBraga.salario))

// MARK: - EXERCÍCIO VEÍCULO

class Veiculo {
    var cor: String
    var preco: Double
    var quantidadeDePassageiros: Int
    
    init(cor: String, preco: Double, quantidadeDePassageiros: Int) {
        self.cor = cor
        self.preco = preco
        self.quantidadeDePassageiros = quantidadeDePassageiros
    }
    
    func combustivelGasto(distancia: Double) -> Double {
        return Double(quantidadeDePassageiros) * distancia
    }
    
    // Definia um metodo que receba como parametro a distancia em km e calcule a quantidade de combustível
    // carro tamanho das rodas * quantidade de passageiros * distancia
    // aviao quantidade de passageiros * distancia
}

class Carro: Veiculo {
    var tamanhoDasRodas: Double
    
    init(tamanhoDasRodas: Double, cor: String, preco: Double, quantidadeDePassageiros: Int) {
        self.tamanhoDasRodas = tamanhoDasRodas
        super.init(cor: cor, preco: preco, quantidadeDePassageiros: quantidadeDePassageiros)
    }
    
    override func combustivelGasto(distancia: Double) -> Double {
        return Double(tamanhoDasRodas * Double(quantidadeDePassageiros) * distancia)
    }
}
        

class Aviao: Veiculo {
    var piloto: Int
    var companhiaAerea: String
    
    init(piloto: Int, companhiaAerea: String) {
        self.piloto = piloto
        self.companhiaAerea = companhiaAerea
        super.init(cor: "Braco", preco: 12930190, quantidadeDePassageiros: 80)
    }
    
    override func combustivelGasto(distancia: Double) -> Double {
        return Double(quantidadeDePassageiros) * distancia
    }
}

var citationCJ2: Aviao = Aviao(piloto: 2, companhiaAerea: "TAM")
citationCJ2.quantidadeDePassageiros = 10
print(citationCJ2.combustivelGasto(distancia: 200))

//var fusca: Carro = Carro(tamanhoDasRodas: 15)
//print(fusca.combustivelGasto(distancia: 100))

