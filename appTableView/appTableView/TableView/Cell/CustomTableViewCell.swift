//
//  CustomTableViewCell.swift
//  appTableView
//
//  Created by Eduardo Escaleira on 11/04/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var companyNameLabel: UILabel!
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(company: Company) {
        logoImageView.image = UIImage(named: company.logoImage)
        companyNameLabel.text = company.companyName
        
    }
    
}
