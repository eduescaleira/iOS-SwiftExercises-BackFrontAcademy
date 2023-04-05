//
//  FourthVC.swift
//  Exerc 3 - Navigation
//
//  Created by Eduardo Escaleira on 05/04/23.
//

import UIKit

class FourthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "FourthVC"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedGoToNextScreen(_ sender: UIButton) {
        
        let vc: FifthVC? = UIStoryboard(name: "FifthVC", bundle: nil).instantiateViewController(withIdentifier: "FifthVC") as? FifthVC
        vc?.modalPresentationStyle = .automatic
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
    }
    
    @IBAction func tappedReturnToPreviousScreen(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
