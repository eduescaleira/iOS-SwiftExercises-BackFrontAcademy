//
//  PersonTableViewCell.swift
//  DesafioTabBarTableView
//
//  Created by Eduardo Escaleira on 25/04/23.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var personImage: UIImageView!
    
    @IBOutlet weak var personName: UILabel!
    
    static let identifier: String = String(describing: PersonTableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func setupCell (person: Person) {
        personImage.image = person.image
        personName.text = person.name
    }
    
}
