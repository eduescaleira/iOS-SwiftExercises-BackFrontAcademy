//
//  SecondScreenViewController.swift
//  ModalProgramatically
//
//  Created by Eduardo Escaleira on 05/04/23.
//

import UIKit

class SecondScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func tappedReturnButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
