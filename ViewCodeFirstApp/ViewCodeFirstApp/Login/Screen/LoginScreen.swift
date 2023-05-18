//
//  LoginScreen.swift
//  ViewCodeFirstApp
//
//  Created by Eduardo Escaleira on 18/05/23.
//

import UIKit

//MARK: COMO CONFIGURAR CLASS EM VIEWCODE
// 1 passo - Criar Screen (Ex: LoginViewController -> Login Screen, RegisterViewController -> RegisterScreen)
// 2 passo - Criar Método Construtor
// 3 passo - Criar Elemento (Não esquecer o translatesAutoresizingMaskIntoConstraints como FALSE)
// 4 passo - Adicionar Elemento
// 5 passo - Configurar Constraints
// 6 passo - Chamar view no loadView

class LoginScreen: UIView {
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        return label
    }()
    
    
    //MARK: MÉTODO CONSTRUTOR:
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        addElements()
        configConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(loginLabel)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            loginLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        
        
        
        ])
        
    }
    
    

}
