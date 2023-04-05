//
//  SixthVC.swift
//  Exerc 3 - Navigation
//
//  Created by Eduardo Escaleira on 05/04/23.
//

import UIKit

class SixthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "SixthVC"

    }
    
    
    @IBAction func tappedReturnToRootVC(_ sender: UIButton) {
        
        navigationController?.popToRootViewController(animated: true)
        
    }
    

}
