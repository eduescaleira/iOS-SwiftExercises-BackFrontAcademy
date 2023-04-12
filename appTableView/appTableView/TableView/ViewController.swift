//
//  ViewController.swift
//  appTableView
//
//  Created by Eduardo Escaleira on 11/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var companyList: [Company] = [
    Company(logoImage: "android", companyName: "Android"),
    Company(logoImage: "apple", companyName: "Apple"),
    Company(logoImage: "cocacola", companyName: "Coca-Cola"),
    Company(logoImage: "kfc", companyName: "KFC"),
    Company(logoImage: "microsoft", companyName: "Microsoft"),
    Company(logoImage: "burguerking", companyName: "Burguer King"),
    Company(logoImage: "shell", companyName: "Shell"),
    Company(logoImage: "instagram", companyName: "Instagram"),
    Company(logoImage: "lego", companyName: "Lego"),
    Company(logoImage: "pepsi", companyName: "Pepsi"),
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.setupCell(company: companyList[indexPath.row])
        cell?.selectionStyle = .none
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // código para executar quando uma célula é selecionada
        let company = companyList[indexPath.row]
        print("Você selecionou a linha \(indexPath.row): \(company.companyName)")
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Remove o item da lista de empresas
            companyList.remove(at: indexPath.row)
            // Deleta a célula da tabela
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}
