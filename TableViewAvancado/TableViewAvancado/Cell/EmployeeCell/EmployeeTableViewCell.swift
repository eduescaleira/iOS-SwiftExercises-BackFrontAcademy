//
//  EmployeeTableViewCell.swift
//  TableViewAvancado
//
//  Created by Eduardo Escaleira on 14/04/23.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var professionLabel: UILabel!
    @IBOutlet weak var salaryLabel: UILabel!
    @IBOutlet weak var heartButton: UIButton!
    
    static let identifier: String = "EmployeeTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        personImageView.tintColor = .purple
        heartButton.tintColor = .systemGray
        
    }
    
    func setupCell(employee: Employee) {
        
        personImageView.image = UIImage(systemName: employee.personImage)
        nameLabel.text = "Nome: \(employee.name)"
        ageLabel.text = "Idade: \(employee.age)"
        professionLabel.text = "Profissão: \(employee.profession)"
        salaryLabel.text = "Salário: \(employee.salary)"
        
//        if employee.isEnableHeart {
//            heartButton.tintColor = .red
//        } else {
//            heartButton.tintColor = .blue
//        }
        
    }
    
    @IBAction func tappedHeartButton(_ sender: UIButton) {
        
        if heartButton.tintColor == .systemGray {
            heartButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            heartButton.tintColor = .red
        } else {
            heartButton.setImage(UIImage(systemName: "heart"), for: .normal)
            heartButton.tintColor = .systemGray

        }
        
       
    }
}
