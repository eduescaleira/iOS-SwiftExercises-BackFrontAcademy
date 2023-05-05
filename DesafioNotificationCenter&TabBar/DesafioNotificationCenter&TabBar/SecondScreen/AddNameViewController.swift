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
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    var alert: Alert?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        configBackgroundView()
        addNameButton()
        configTextField()
        configLogoImage()
        configAlert()
    }
    
    private func configAlert() {
        alert = Alert(controller: self)
    }
    
    private func configLogoImage() {
        logoImageView.image = UIImage(named: "digite")
        logoImageView.contentMode = .scaleAspectFill
    }
    
    private func configView() {
        view.backgroundColor = .systemGreen
    }
    
    private func configBackgroundView() {
        backgroundView.backgroundColor = .systemGray5
    }
    
    private func configTextField() {
        nameTextField.placeholder =  "Digite um nome"
        nameTextField.layer.cornerRadius = 12
        nameTextField.clipsToBounds = true
        nameTextField.autocorrectionType = .no
    }
    
    private func addNameButton() {
        addButton.setTitle("Adicionar", for: .normal)
        addButton.setTitleColor(.white, for: .normal)
        addButton.backgroundColor = .systemGreen
        addButton.layer.cornerRadius = 12
        addButton.clipsToBounds = true
    }
    
    
    @IBAction func tappedAddNameButton(_ sender: UIButton) {
        if nameTextField.text?.isEmpty == true {
            alert?.createAlert(title: "Atenção", message: "A inclusão de um nome é obrigatória")
        } else {
            NotificationCenter.default.post(name: Notification.Name("nome"), object: self, userInfo: ["name": nameTextField.text ?? ""])
            self.tabBarController?.selectedIndex = 0
            nameTextField.text = ""
        }
    }
    

}
