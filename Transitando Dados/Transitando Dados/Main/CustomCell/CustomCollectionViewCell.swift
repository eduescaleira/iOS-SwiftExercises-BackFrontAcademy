//
//  CustomCollectionViewCell.swift
//  Transitando Dados
//
//  Created by Eduardo Escaleira on 05/04/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var logoImageView: UIImageView!
    
    static let identifier: String = "CustomCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        logoImageView.contentMode = .scaleAspectFit
    }
    
    func setupCell(image: String) {
        logoImageView.image = UIImage(named: image)
    }

}
