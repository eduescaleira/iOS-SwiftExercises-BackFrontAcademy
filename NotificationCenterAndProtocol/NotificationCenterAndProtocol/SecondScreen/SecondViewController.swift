//
//  SecondViewController.swift
//  NotificationCenterAndProtocol
//
//  Created by Eduardo Escaleira on 04/05/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var optionsLabel: UILabel!
    
    @IBOutlet weak var macOneButton: UIButton!
    
    @IBOutlet weak var macTwoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLabel()
        configView()
    }
    
    private func configLabel() {
        optionsLabel.text = "Opções"
        optionsLabel.textColor = .yellow
        optionsLabel.font = UIFont.boldSystemFont(ofSize: 40)
        optionsLabel.textAlignment = .center
    }
    
    private func configView() {
        view.layer.backgroundColor = .init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1.0)
    }
    
    
    @IBAction func tappedMacOneButton(_ sender: UIButton) {
    }
    
    @IBAction func tappedMacTwoButton(_ sender: UIButton) {
    }
    
    
}
