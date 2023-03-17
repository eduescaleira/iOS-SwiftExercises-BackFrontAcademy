//
//  ViewController.swift
//  Ligacoes
//
//  Created by Eduardo Escaleira on 16/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Eduardo"
        
    }
    
    @IBAction func tappedLoginButton(_ sender: Any) {
        print("Cliquei no botão")
    }
    
}

