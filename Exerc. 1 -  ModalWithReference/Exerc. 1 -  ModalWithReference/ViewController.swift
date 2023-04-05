//
//  ViewController.swift
//  Exerc. 1 -  ModalWithReference
//
//  Created by Eduardo Escaleira on 05/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedGoToSecondScreen(_ sender: UIButton) {
        
        performSegue(withIdentifier: "SecondViewController", sender: nil)
        
    }
    
}

