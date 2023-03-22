//
//  ViewController.swift
//  SegundoDesafioTextField
//
//  Created by Eduardo Escaleira on 22/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTextFields()
        configButton()
        
    }
    
    private func configTextFields() {
        
        nameTextField.placeholder = "Digite o seu nome"
        nameTextField.autocorrectionType = .no
        nameTextField.layer.cornerRadius = 8
        nameTextField.clipsToBounds = true
        nameTextField.delegate = self
        nameTextField.layer.borderWidth = 2.0
        nameTextField.layer.borderColor = UIColor.red.cgColor
        
        addressTextField.placeholder = "Digite o seu endereço"
        addressTextField.autocorrectionType = .no
        addressTextField.layer.cornerRadius = 8
        addressTextField.clipsToBounds = true
        addressTextField.delegate = self
        addressTextField.layer.borderWidth = 2.0
        addressTextField.layer.borderColor = UIColor.red.cgColor
        
        passwordTextField.placeholder = "Digite a sua senha"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.autocorrectionType = .no
        passwordTextField.layer.cornerRadius = 8
        passwordTextField.clipsToBounds = true
        passwordTextField.delegate = self
        passwordTextField.layer.borderWidth = 2.0
        passwordTextField.layer.borderColor = UIColor.red.cgColor
        
        confirmPasswordTextField.placeholder = "Confirme a sua senha"
        confirmPasswordTextField.isSecureTextEntry = true
        confirmPasswordTextField.autocorrectionType = .no
        confirmPasswordTextField.layer.cornerRadius = 8
        confirmPasswordTextField.clipsToBounds = true
        confirmPasswordTextField.delegate = self
        confirmPasswordTextField.layer.borderWidth = 2.0
        confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
        
    }
    
    private func configButton() {
        
        registerButton.setTitle("Cadastrar", for: .normal)
        registerButton.setTitleColor(UIColor.white, for: .normal)
        registerButton.backgroundColor = UIColor.lightGray
        registerButton.layer.cornerRadius = 8
        registerButton.clipsToBounds = true
        registerButton.isEnabled = false
        
    }
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        print("Cadastro realizado com sucesso")
    }
    
    private func tintBlueBorderColor(textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 2.0
    }
    
    private func tintRedBorderColor(textField: UITextField) {
        if textField.hasText == false {
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth = 2.0
        } else {
            textField.layer.borderWidth = 0
        }
    }
    
    private func tintRedPasswordTextFields() {
        if passwordTextField.text != confirmPasswordTextField.text {
            
            passwordTextField.layer.borderWidth = 2.0
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            confirmPasswordTextField.layer.borderWidth = 2.0
            confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
            
        } else if passwordTextField.hasText == false &&
                    confirmPasswordTextField.hasText == false  {
            
            passwordTextField.layer.borderWidth = 2.0
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            confirmPasswordTextField.layer.borderWidth = 2.0
            confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
            
        } else {
            passwordTextField.layer.borderWidth = 0
            confirmPasswordTextField.layer.borderWidth = 0
            
        }
    }
    
    private func enableButton() {
        if nameTextField.hasText == true && passwordTextField.hasText == true && addressTextField.hasText == true && confirmPasswordTextField.hasText == true && confirmPasswordTextField.text == passwordTextField.text {
            registerButton.isEnabled = true
        } else {
            registerButton.isEnabled = false
        }
    }
    
    private func resignResponder(textField: UITextField) {
        if textField == nameTextField {
            addressTextField.becomeFirstResponder()
        } else if textField == addressTextField {
            passwordTextField.becomeFirstResponder()
        } else if textField == passwordTextField{
            confirmPasswordTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        tintBlueBorderColor(textField: textField)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        resignResponder(textField: textField)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        tintRedBorderColor(textField: textField)
        enableButton()
        tintRedPasswordTextFields()
    }
    
}
