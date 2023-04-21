//
//  CustomCollectionViewCell.swift
//  PrimeiroProjetoCollectionView
//
//  Created by Eduardo Escaleira on 20/04/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var carImageView: UIImageView!
    
//    static let identifier: String = "CustomCollectionViewCell" -> EVITAR STRINGS MÁGICAS
    static let identifier: String = String(describing: CustomCollectionViewCell.self) //
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        configElement()
    }
    
    private func configElement() {
        carImageView.contentMode = .scaleAspectFill
    }
    
    func setupCell(nameImage: String) {
        carImageView.image = UIImage(named: nameImage)
    }
    

}
