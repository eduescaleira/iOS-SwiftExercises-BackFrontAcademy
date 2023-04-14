//
//  ViewController.swift
//  TableViewAvancado
//
//  Created by Eduardo Escaleira on 14/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var listPerson: [Person] = [Person(starImage: "star", name: "Eduardo Escaleira")]
    var listEmployee: [Employee] = [
        Employee(personImage: "person", name: "Eduardo", age: 39, profession: "Dev", salary: "10.000,00"),
        Employee(personImage: "person", name: "Thiago", age: 12, profession: "Developer", salary: "3.221,32"),
        Employee(personImage: "person", name: "Felipe", age: 32, profession: "Teacher", salary: "6.431,53"),
        Employee(personImage: "person", name: "João", age: 54, profession: "Nurse", salary: "13.542,64"),
        Employee(personImage: "person", name: "Angela", age: 62, profession: "Doctor", salary: "43.213,43"),
        Employee(personImage: "person", name: "Eduardo", age: 39, profession: "Dev", salary: "10.000,00"),
        Employee(personImage: "person", name: "Thiago", age: 12, profession: "Developer", salary: "3.221,32"),

    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    private func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PersonTableViewCell.nib(), forCellReuseIdentifier: PersonTableViewCell.identifier)
        tableView.register(EmployeeTableViewCell.nib(), forCellReuseIdentifier: EmployeeTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listPerson.count + listEmployee.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier, for: indexPath) as? PersonTableViewCell
            cell?.setupCell(person: listPerson[indexPath.row])
            return UITableViewCell()
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: EmployeeTableViewCell.identifier, for: indexPath) as? EmployeeTableViewCell
            cell?.setupCell(employee: listEmployee[indexPath.row - 1])
            cell?.selectionStyle = .none
            return cell ?? UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0 {
            return 120
        } else {
            return 130
        }
    }
}
