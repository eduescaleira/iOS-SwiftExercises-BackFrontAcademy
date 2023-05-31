//
//  ViewController.swift
//  PrimeiroAppTableView
//
//  Created by Eduardo Escaleira on 06/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    var viewModel: ViewModel = ViewModel()
    
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
        return viewModel.getNumberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier) as? NameTableViewCell
        cell?.setupCell(person: viewModel.getCellForRow(indexPath: indexPath))
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}
