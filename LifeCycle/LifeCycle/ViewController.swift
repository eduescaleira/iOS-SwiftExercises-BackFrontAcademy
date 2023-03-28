//
//  ViewController.swift
//  LifeCycle
//
//  Created by Eduardo Escaleira on 28/03/23.
//

import UIKit

class ViewController: UIViewController {


    // 1 - DISPARADO UMA ÚNICA VEZ ASSIM QUE TODA A TELA FOR RENDERIZADA.
    // ex. Configurar elementos, (fonte, cor, estilo, etc).
    // ex. Disparar request de início, etc.
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }
    
    // 2- DISPARADO SEMPRE QUE A TELA ESTÁ PRESTES A SER APRESENTADA.
    // ex. Configurar parte navigation / animação
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }
    
    
    // 3 - DISPARADO TODA VEZ QUE A TELA É APRESENTADA POR COMPLETO
    // ex. configurar animação e timer
    override func viewDidAppear(_ animated: Bool) {
        print(#function)
    }
    
    // 4 - MÉTODO DISPARADO QUANDO A TELA ESTÁ PRESTES A SAIR.
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }
    
    // 5 - MÉTODO DISPARADO QUANDO A TELA JÁ SAIU.
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }


}

