//
//  NameListViewController.swift
//  DesafioNotificationCenter&TabBar
//
//  Created by Eduardo Escaleira on 05/05/23.
//

import UIKit

class NameListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let nameList: [PersonName] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        configTableView()
    }
    
    private func configView() {
        view.backgroundColor = .systemCyan
    }
    
    private func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .systemGray5
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }
 
}

extension NameListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let vc = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell
        vc?.setupCell(personName: nameList[indexPath.row])
        return vc ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
}
