//
//  ViewController.swift
//  PrimeiroAppTextFieldDelegate
//
//  Created by Eduardo Escaleira on 21/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        emailTextField.delegate = self
        configTxts()
    }
    
    private func configTxts() {
        nameTextField.layer.cornerRadius = 16
        nameTextField.clipsToBounds = true
        emailTextField.layer.cornerRadius = 16
        emailTextField.clipsToBounds = true
        nameTextField.attributedPlaceholder = NSAttributedString(string: "Digite o seu login", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red.withAlphaComponent(0.4)])
        emailTextField.attributedPlaceholder = NSAttributedString(string: "Digite o seu email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red.withAlphaComponent(0.4)])
        nameTextField.autocorrectionType = .no
        emailTextField.autocorrectionType = .no
    }

}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if textField == nameTextField {
            nameTextField.layer.borderColor = UIColor.orange.cgColor
            nameTextField.layer.borderWidth = 2
        } else {
            emailTextField.layer.borderColor = UIColor.green.cgColor
            emailTextField.layer.borderWidth = 2
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
        textField.layer.borderWidth = 0

//        if nameTextField.hasText {
//            nameTextField.layer.borderWidth = 2
//            nameTextField.layer.borderColor = UIColor.blue.cgColor
//        }
        // quando o teclado abaixa
        // todo código vai aqui, nunca no shouldReturn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder() // teclado abaixa
        return true
    }
    
}
