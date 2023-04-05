//
//  ThirdVC.swift
//  Exerc 3 - Navigation
//
//  Created by Eduardo Escaleira on 05/04/23.
//

import UIKit

class ThirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ThirdVC"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedGoToNextScreen(_ sender: UIButton) {
        
        let vc: FourthVC? = UIStoryboard(name: "FourthVC", bundle: nil).instantiateViewController(withIdentifier: "FourthVC") as? FourthVC
        vc?.modalPresentationStyle = .automatic
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    
    @IBAction func tappedReturnToPreviousScreen(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    
    
    
    
    
}
