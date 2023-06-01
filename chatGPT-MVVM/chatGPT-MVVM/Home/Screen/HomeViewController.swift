//
//  ViewController.swift
//  chatGPT-MVVM
//
//  Created by Eduardo Escaleira on 11/05/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var screen: HomeScreen?
    var viewModel: HomeViewModel = HomeViewModel()
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configTableViewProtocols(delegate: self, dataSource: self)
        screen?.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        addLogoToNagivationBarItem(image: UIImage(named: .backFrontLogoImage) ?? UIImage())
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = viewModel.loadCurrentMessage(indexPath: indexPath)
        switch model.typeMessage {
        case .user:
            let cell = tableView.dequeueReusableCell(withIdentifier: OutgoingTextTableViewCell.identifier, for: indexPath) as? OutgoingTextTableViewCell
            cell?.setupCell(message: model.message)
            return cell ?? UITableViewCell()
        case .chatGPT:
            let cell = tableView.dequeueReusableCell(withIdentifier: IncomingTextMessageTableViewCell.identifier, for: indexPath) as? IncomingTextMessageTableViewCell
            cell?.setupCell(message: model.message)
            return cell ?? UITableViewCell()
        }
    
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForForAt(indexPath: indexPath)
    }
    
    
}

extension HomeViewController: HomeScreenProtocol {
    func sendMessage(text: String) {
        viewModel.addMessage(message: text)
        screen?.tableView.reloadData()
    }
    
}

