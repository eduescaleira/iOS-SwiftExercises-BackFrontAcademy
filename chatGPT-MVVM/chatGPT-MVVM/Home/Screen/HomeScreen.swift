//
//  HomeScreen.swift
//  chatGPT-MVVM
//
//  Created by Eduardo Escaleira on 31/05/23.
//

import UIKit

protocol HomeScreenProtocol: AnyObject {
    func sendMessage(text: String)
    
}

class HomeScreen: UIView {
    
    weak var delegate: HomeScreenProtocol?

    //MARK: CONSTRUTOR
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
        backgroundColor = .background

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = .background
        tableView.register(OutgoingTextTableViewCell.self, forCellReuseIdentifier: OutgoingTextTableViewCell.identifier)
        
        return tableView
    }()
    
    lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = .background
        
        return contentView
    }()
    
    lazy var subContentView: UIView = {
        let subContentView = UIView()
        subContentView.translatesAutoresizingMaskIntoConstraints = false
        subContentView.backgroundColor = .white
        subContentView.clipsToBounds = true
        subContentView.layer.cornerRadius = 8
        
        return subContentView
    }()
    
    lazy var messageTextField: UITextField = {
       let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = .textFieldPlaceHolder
        textField.autocorrectionType = .no
        textField.borderStyle = .none
        textField.delegate = self
        
        return textField
    }()
    
    lazy var sendButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .pink
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        button.setImage(UIImage(named: .sendButtonImage), for: .normal)
        button.addTarget(self, action: #selector(tappedSendButton), for: .touchUpInside)
        button.isEnabled = false
        
        return button
    }()
    
    @objc func tappedSendButton() {
        delegate?.sendMessage(text: messageTextField.text ?? "")
    }
    
    
    func addElements() {
        addSubview(tableView)
        addSubview(contentView)
        contentView.addSubview(subContentView)
        subContentView.addSubview(messageTextField)
        contentView.addSubview(sendButton)
        
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
            contentView.heightAnchor.constraint(equalToConstant: 80),
            
        
            subContentView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            subContentView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            subContentView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            subContentView.heightAnchor.constraint(equalToConstant: 50),
            
            messageTextField.centerYAnchor.constraint(equalTo: subContentView.centerYAnchor),
            messageTextField.leadingAnchor.constraint(equalTo: subContentView.leadingAnchor, constant: 10),
            messageTextField.trailingAnchor.constraint(equalTo: sendButton.leadingAnchor, constant: -5),
            messageTextField.heightAnchor.constraint(equalToConstant: 40),
            
            sendButton.heightAnchor.constraint(equalToConstant: 50),
            sendButton.widthAnchor.constraint(equalToConstant: 50),
            sendButton.centerYAnchor.constraint(equalTo: subContentView.centerYAnchor, constant: -10),
            sendButton.trailingAnchor.constraint(equalTo: subContentView.trailingAnchor, constant: -5),
            
        
        
        ])
    }

}

extension HomeScreen: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text as NSString? else { return false }
        let updateText = text.replacingCharacters(in: range, with: string)
        if updateText.isEmpty {
            sendButton.isEnabled = false
        } else {
            sendButton.isEnabled = true
        }
        
     //   print(updateText)
        return true
    }
    
}
