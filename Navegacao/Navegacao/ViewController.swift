//
//  ViewController.swift
//  Navegacao
//
//  Created by Eduardo Escaleira on 28/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedShowTela02Button(_ sender: Any) {
        performSegue(withIdentifier: "showTela02", sender: nil)
    }
    
    @IBAction func tappedShowTela03Button(_ sender: Any) {
        performSegue(withIdentifier: "showTela03", sender: nil)
    }
    
    
    @IBAction func tappedShowTela04Button(_ sender: Any) {
        performSegue(withIdentifier: "Tela02VC", sender: nil)

    }
    
    @IBAction func tappedShowTela05Button(_ sender: Any) {
        performSegue(withIdentifier: "Tela05VC", sender: nil)
    }
    
    
    
}

