//
//  ViewController.swift
//  chatGPT-MVVM
//
//  Created by Eduardo Escaleira on 11/05/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var screen: HomeScreen?
    
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
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
}

extension HomeViewController: HomeScreenProtocol {
    func sendMessage(text: String) {
        print(text)
    }
    
}

