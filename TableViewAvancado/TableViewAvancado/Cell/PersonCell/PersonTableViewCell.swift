//
//  PersonTableViewCell.swift
//  TableViewAvancado
//
//  Created by Eduardo Escaleira on 14/04/23.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "PersonTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell(person: Person) {
        logoImageView.image = UIImage(systemName: person.starImage)
        nameLabel.text = person.name
    }
    
    
    
}
