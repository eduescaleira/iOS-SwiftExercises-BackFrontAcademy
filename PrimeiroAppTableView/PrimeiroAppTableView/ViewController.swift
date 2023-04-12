//
//  ViewController.swift
//  PrimeiroAppTableView
//
//  Created by Eduardo Escaleira on 06/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
//    var listOfNames = ["João", "Eduardo", "Diana", "Caio", "Joaquim", "Analu"]
//    ["Diana", "Analu", "Catarina", "Luisa"],
//    ["Murilo", "Theo", "Claudia", "Helena", "Diana"]
    
    
    var personList: [Person] = [Person(name: "João"),
                                Person(name: "Eduardo"),
                                Person(name: "Analu"),
                                Person(name: "Diana"),
                                Person(name: "Joaquim"),
                                Person(name: "Caio"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    private func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier) as? NameTableViewCell
      //  cell?.setupCell(name: listOfNames[indexPath.section][indexPath.row])
        cell?.setupCell(person: personList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return listOfNames.count
//    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 30))
//        headerView.backgroundColor = .systemGray5
//        let label = UILabel(frame: CGRect(x: 10, y: 0, width: tableView.frame.width - 20, height: 30))
//        label.text = "Section \(section + 0)"
//        headerView.addSubview(label)
//        return headerView
//    }
    
    
}
