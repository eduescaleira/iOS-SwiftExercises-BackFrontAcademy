//
//  ViewController.swift
//  ViewCodeFirstApp
//
//  Created by Eduardo Escaleira on 16/05/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: COMO CONFIGURAR CLASS EM VIEWCODE
    // 1 passo - Criar Screen (Ex: LoginViewController -> Login Screen, RegisterViewController -> RegisterScreen)
    // 2 passo - Criar Método Construtor
    // 3 passo - Criar Elemento (Não esquecer o translatesAutoresizingMaskIntoConstraints como FALSE)
    // 4 passo - Adicionar Elemento
    // 5 passo - Configurar Constraints
    // 6 passo - Chamar view no loadView
    
    var screen: LoginScreen?
    
    //MARK: SERVE UNICAMENTE PARA QUE A VIEWCONTROLLER RECEBA A LOGINSCREEN
    override func loadView() {
        screen = LoginScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

