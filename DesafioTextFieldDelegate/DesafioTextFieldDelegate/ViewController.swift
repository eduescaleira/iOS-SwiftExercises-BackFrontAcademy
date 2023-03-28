//
//  ViewController.swift
//  DesafioTextFieldDelegate
//
//  Created by Eduardo Escaleira on 22/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTextFields()

    }
    
    private func configTextFields() {
        nameTextField.placeholder = "Digite o seu nome"
        nameTextField.autocorrectionType = .no
        nameTextField.layer.cornerRadius = 8
        nameTextField.clipsToBounds = true
        nameTextField.delegate = self
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
        nameTextField.layer.borderWidth = 2.0
        
        addressTextField.placeholder = "Digite o seu endereço"
        addressTextField.autocorrectionType = .no
        addressTextField.layer.cornerRadius = 8
        addressTextField.clipsToBounds = true
        addressTextField.delegate = self
        addressTextField.layer.borderColor = UIColor.lightGray.cgColor
        addressTextField.layer.borderWidth = 2.0
        
        passwordTextField.placeholder = "Digite a sua senha"
        passwordTextField.autocorrectionType = .no
        passwordTextField.isSecureTextEntry = true
        passwordTextField.layer.cornerRadius = 8
        passwordTextField.clipsToBounds = true
        passwordTextField.delegate = self
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextField.layer.borderWidth = 2.0
        
        registerButton.setTitle("Cadastrar", for: .normal)
        registerButton.setTitleColor(.white, for: .normal)
        registerButton.backgroundColor = .systemBlue
        registerButton.layer.cornerRadius = 8
        registerButton.clipsToBounds = true
        registerButton.isEnabled = false
        
    }
    
    // MARK: FUNÇÕES P/ OS TEXTFIELDS DELEGATE:
    
    private func enableRegisterButton() {
        
        if nameTextField.hasText && addressTextField.hasText && passwordTextField.hasText {
            registerButton.isEnabled = true
        } else {
            registerButton.isEnabled = false
        }
    }
    
    private func textFieldResponder(textField: UITextField) {
        if textField == nameTextField {
            addressTextField.becomeFirstResponder()
        } else if textField == addressTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            passwordTextField.resignFirstResponder()
        }
    }
    
    private func checkIfTextFieldHasText(textField: UITextField) {
        if !textField.hasText {
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            textField.layer.borderColor = UIColor.lightGray.cgColor
        }
    }
    
    private func resignBorderColor(textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        print("Cadastro realizado com sucesso")
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        resignBorderColor(textField: textField)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldResponder(textField: textField)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        enableRegisterButton()
        checkIfTextFieldHasText(textField: textField)
    }

}

