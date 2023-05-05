//
//  NameTableViewCell.swift
//  DesafioNotificationCenter&TabBar
//
//  Created by Eduardo Escaleira on 05/05/23.
//

import UIKit

class NameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier: String = "NameTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configLabel()
    }
    
    private func configLabel() {
        nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        nameLabel.textColor = .black
    }
    
    func setupCell(personName: PersonName) {
        nameLabel.text = personName.name
        
    }

    
}
