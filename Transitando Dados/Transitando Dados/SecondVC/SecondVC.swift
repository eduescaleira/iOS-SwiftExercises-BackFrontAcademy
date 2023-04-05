//
//  SecondVC.swift
//  Transitando Dados
//
//  Created by Eduardo Escaleira on 05/04/23.
//

import UIKit

class SecondVC: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    
    
    var name: String
    var image: String
    
    init?(coder: NSCoder, name: String, image: String) {
        self.name = name
        self.image = image
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = name
        logoImageView.image = UIImage(named: image)
    }

}
