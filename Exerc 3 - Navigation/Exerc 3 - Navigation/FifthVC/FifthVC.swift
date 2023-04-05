//
//  FifthVC.swift
//  Exerc 3 - Navigation
//
//  Created by Eduardo Escaleira on 05/04/23.
//

import UIKit

class FifthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       title = "FifthVC"
    }
    

    @IBAction func tappedGoToNextScreen(_ sender: UIButton) {
        
        let vc: SixthVC? = UIStoryboard(name: "SixthVC", bundle: nil).instantiateViewController(withIdentifier: "SixthVC") as? SixthVC
        vc?.modalPresentationStyle = .automatic
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
    }
    
    
    @IBAction func tappedReturnToPreviousScreen(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    

}
