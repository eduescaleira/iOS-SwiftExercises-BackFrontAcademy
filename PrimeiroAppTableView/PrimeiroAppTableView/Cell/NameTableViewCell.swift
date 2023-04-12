//
//  NameTableViewCell.swift
//  PrimeiroAppTableView
//
//  Created by Eduardo Escaleira on 06/04/23.
//

import UIKit

class NameTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(person: Person) {
        nameLabel.text = person.name
    }

 
}
