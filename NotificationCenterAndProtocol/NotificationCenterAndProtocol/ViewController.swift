//
//  ViewController.swift
//  NotificationCenterAndProtocol
//
//  Created by Eduardo Escaleira on 04/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoAppleImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var clickHereButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configImage()
        configView()
        configLabel()
        configButton()
        configObserver()
    }
    
    func configObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacbook), name: .macbook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateIMac), name: .iMac, object: nil)
    }
    
    @objc func updateMacbook(_ notification: NSNotification) {
        logoAppleImageView.image = UIImage(named: "Macbook")
        nameLabel.text = "Macbook"
    }
    
    @objc func updateIMac(_ notification: NSNotification) {
        logoAppleImageView.image = UIImage(named: "iMac")
        nameLabel.text = "iMac"
    }
    
    
    
    private func configImage() {
        logoAppleImageView.image = UIImage(systemName: "apple.logo")
        logoAppleImageView.tintColor = .systemGray6
    }
    
    private func configView() {
        view.layer.backgroundColor = .init(red: 101/255, green: 197/255, blue: 103/255, alpha: 1.0)
    }
    
    private func configLabel() {
        nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        nameLabel.text = ""
        
    }
    
    private func configButton() {
        clickHereButton.setTitle("Clique aqui!", for: .normal)
        clickHereButton.backgroundColor = .lightGray
        clickHereButton.setTitleColor(.black, for: .normal)
        clickHereButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
    }

    @IBAction func tappedClickHereButton(_ sender: UIButton) {

    let vc: SecondViewController? = UIStoryboard(name: "SecondViewController", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc?.modalPresentationStyle = .automatic
        vc?.delegate = self // ASSINANDO O PROTOCOLO!
        present(vc ?? UIViewController(), animated: true)
            
    }
    
}

extension ViewController: SecondViewControllerProtocol {
    func tappedMacbook() {
        logoAppleImageView.image = UIImage(named: "Macbook")
        nameLabel.text = "Macbook"
    }
    
    func tappedImac() {
        logoAppleImageView.image = UIImage(named: "iMac")
        nameLabel.text = "iMac"
    }
    
    
}

