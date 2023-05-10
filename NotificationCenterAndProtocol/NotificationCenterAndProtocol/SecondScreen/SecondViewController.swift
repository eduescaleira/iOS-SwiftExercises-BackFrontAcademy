//
//  SecondViewController.swift
//  NotificationCenterAndProtocol
//
//  Created by Eduardo Escaleira on 04/05/23.
//

import UIKit

//MARK: INCLUIR O PROTOCOLO EM SI
protocol SecondViewControllerProtocol: AnyObject {
    func tappedMacbook()
    func tappedImac()
}

class SecondViewController: UIViewController {

    @IBOutlet weak var optionsLabel: UILabel!
    @IBOutlet weak var macOneButton: UIButton!
    @IBOutlet weak var macTwoButton: UIButton!
    
    //MARK: INCLUIR O DELEGATE DO PROTOCOL
    weak var delegate: SecondViewControllerProtocol?
    
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
    
    
    //MARK: INCLUIR AQUI TAMBÉM
    @IBAction func tappedMacOneButton(_ sender: UIButton) {
        delegate?.tappedMacbook()
        dismiss(animated: true)
    }
    
    @IBAction func tappedMacTwoButton(_ sender: UIButton) {
        delegate?.tappedImac()
        dismiss(animated: true)
    }
    
    
}
