//
//  SecondVC.swift
//  Exerc 3 - Navigation
//
//  Created by Eduardo Escaleira on 05/04/23.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SecondVC"
    }


    @IBAction func tappedGoToNextScreen(_ sender: UIButton) {
        
        let vc: ThirdVC? = UIStoryboard(name: "ThirdVC", bundle: nil).instantiateViewController(withIdentifier: "ThirdVC") as? ThirdVC
        vc?.modalPresentationStyle = .automatic
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    
    @IBAction func tappedReturnToPreviousScreen(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
    }
    
    
    
}
