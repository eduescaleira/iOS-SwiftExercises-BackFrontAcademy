//
//  AddNameViewController.swift
//  DesafioNotificationCenter&TabBar
//
//  Created by Eduardo Escaleira on 05/05/23.
//

import UIKit

class AddNameViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    
    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        configBackgroundView()
        addNameButton()
        configTextField()
    }
    
    private func configView() {
        view.backgroundColor = .systemCyan
    }
    
    private func configBackgroundView() {
        backgroundView.backgroundColor = .systemGray5
    }
    
    private func configTextField() {
        nameTextField.placeholder =  "Digite um nome"
        nameTextField.layer.cornerRadius = 12
        nameTextField.clipsToBounds = true
    }
    
    private func addNameButton() {
        addButton.setTitle("Adicionar", for: .normal)
        addButton.setTitleColor(.white, for: .normal)
        addButton.backgroundColor = .tintColor
        addButton.layer.cornerRadius = 12
        addButton.clipsToBounds = true
    }
    
    
    @IBAction func tappedAddNameButton(_ sender: UIButton) {
    }
    

}
