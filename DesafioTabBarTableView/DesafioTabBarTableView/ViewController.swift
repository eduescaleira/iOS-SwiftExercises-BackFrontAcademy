//
//  ViewController.swift
//  DesafioTabBarTableView
//
//  Created by Eduardo Escaleira on 25/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var perfilImageView: UIImageView!
    
    @IBOutlet weak var changeImageButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var appendToTableViewButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    var userList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
        configTableView()
    }
    
    private func configElements() {
        perfilImageView.image = UIImage(systemName: "person.fill")
        perfilImageView.tintColor = .black
        changeImageButton.setTitle("Editar foto", for: .normal)
        nameLabel.text = "Nome"
        nameTextField.placeholder = "Digite o seu nome"
        appendToTableViewButton.setTitle("Adicionar", for: .normal)
    }
    
    private func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.isEditing = true
        tableView.register(PersonTableViewCell.nib(), forCellReuseIdentifier: PersonTableViewCell.identifier)
    }
    
    @IBAction func tappedChangePictureButton(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
          imagePicker.delegate = self
          imagePicker.sourceType = .photoLibrary
          present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func tappedAppendToTableViewButton(_ sender: UIButton) {
        
        if let image = perfilImageView.image {
            userList.append(Person(image: image, name: nameTextField.text ?? ""))
            print("Tamanho da lista: \(userList.count)")
        }
        tableView.reloadData()
        perfilImageView.image = UIImage(systemName: "person.fill")
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier, for: indexPath) as? PersonTableViewCell
        cell?.setupCell(person: userList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Remova a célula dos seus dados
            userList.remove(at: indexPath.row)
            // Em seguida, remova a célula da tabela
            tableView.deleteRows(at: [indexPath], with: .fade)
                //   tableView.reloadData()
        }
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imagemSelecionada = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            perfilImageView.image = imagemSelecionada
        }
        dismiss(animated: true, completion: nil)
    }
}
