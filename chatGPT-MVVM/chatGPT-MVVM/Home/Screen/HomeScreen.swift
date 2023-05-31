//
//  HomeScreen.swift
//  chatGPT-MVVM
//
//  Created by Eduardo Escaleira on 31/05/23.
//

import UIKit

class HomeScreen: UIView {

    //MARK: CONSTRUTOR
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
        backgroundColor = .systemPink

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = .white
        #warning("REGISTRAR AS CÉLULAS QUE AINDA NÃO EXISTEM")
        
        return tableView
    }()
    
    lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = .green
        
        return contentView
    }()
    
    lazy var subContentView: UIView = {
        let subContentView = UIView()
        subContentView.translatesAutoresizingMaskIntoConstraints = false
        subContentView.backgroundColor = .purple
        
        return subContentView
    }()
    
    
    
    func addElements() {
        addSubview(tableView)
        addSubview(contentView)
        contentView.addSubview(subContentView)
    }
    
    func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableView.delegate = delegate // HomeViewController está assinado o protocolo
        tableView.dataSource = dataSource // HomeViewController está assinado o protocolo
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: contentView.topAnchor),
            
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: keyboardLayoutGuide.topAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 50),
            
        
            subContentView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            subContentView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            subContentView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            subContentView.heightAnchor.constraint(equalToConstant: 30),
            
            
            
            
        
        
        ])
    }
    
    
    
    

}
