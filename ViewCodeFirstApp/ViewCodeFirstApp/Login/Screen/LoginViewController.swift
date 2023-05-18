//
//  ViewController.swift
//  ViewCodeFirstApp
//
//  Created by Eduardo Escaleira on 16/05/23.
//

import UIKit

class LoginViewController: UIViewController {
    
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

