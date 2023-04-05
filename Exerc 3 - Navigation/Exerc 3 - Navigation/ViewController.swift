//
//  ViewController.swift
//  Exerc 3 - Navigation
//
//  Created by Eduardo Escaleira on 05/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "FirstScreen"
    }

    @IBAction func tappedGoToNextScreen(_ sender: UIButton) {
        let vc: SecondVC? = UIStoryboard(name: "SecondVC", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as? SecondVC
        vc?.modalPresentationStyle = .automatic
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
    }
    
    
}

