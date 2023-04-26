//
//  ViewController.swift
//  DesafioTabBarTableView
//
//  Created by Eduardo Escaleira on 25/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var perfilImageView: UIImageView!
    
    @IBOutlet weak var changeImageButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var appendToTableViewButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    var userList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }
    
    private func configElements() {
        perfilImageView.image = UIImage(systemName: "person.fill")
        perfilImageView.tintColor = .black
        changeImageButton.setTitle("Editar foto", for: .normal)
        nameLabel.text = "Nome"
        nameTextField.placeholder = "Digite o seu nome"
        appendToTableViewButton.setTitle("Adicionar", for: .normal)
    }
    
    private func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PersonTableViewCell.nib(), forCellReuseIdentifier: PersonTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier, for: indexPath) as? PersonTableViewCell
        cell?.setupCell(person: userList[indexPath.row])
        return cell ?? UITableViewCell()
    }
}
