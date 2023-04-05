//
//  ViewController.swift
//  ModalProgramatically
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
        
        let vc: SecondScreenViewController? = UIStoryboard(name: "SecondScreenViewController", bundle: nil).instantiateViewController(withIdentifier: "SecondScreenViewController") as? SecondScreenViewController
        vc?.modalPresentationStyle = .automatic
        present(vc ?? UIViewController(), animated: true)
        
    }
    
}

