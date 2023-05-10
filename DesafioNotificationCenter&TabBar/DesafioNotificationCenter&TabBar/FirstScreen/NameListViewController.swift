//
//  NameListViewController.swift
//  DesafioNotificationCenter&TabBar
//
//  Created by Eduardo Escaleira on 05/05/23.
//

import UIKit

class NameListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var nameList: [PersonName] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        configTableView()
        configObserver()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configTableViewBackground()
        
    }
    
    func configObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(addNameToTableView), name: .nameExtension, object: nil)
    }
    
    @objc func addNameToTableView (_ notification: NSNotification) {
        if let userInfo = notification.userInfo, let name = userInfo["name"] as? String {
                nameList.append(PersonName(name: name))
                tableView.reloadData()
            }
    }
    
    
    private func configView() {
        view.backgroundColor = .systemGreen
    }
    
    private func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .systemGray5
        tableView.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
        
    }
    
    private func configTableViewBackground() {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height))
        messageLabel.text = "Sua lista não contém nenhum nome"
        messageLabel.textColor = UIColor.gray
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
        messageLabel.font = UIFont(name: "HelveticaNeue", size: 20)

        if tableView.numberOfRows(inSection: 0) == 0{
            tableView.backgroundView = messageLabel
        } else {
            tableView.backgroundView = nil
        }
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
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                nameList.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }
    
    
}
