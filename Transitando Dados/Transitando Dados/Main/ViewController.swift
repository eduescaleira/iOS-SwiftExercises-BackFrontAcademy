//
//  ViewController.swift
//  Transitando Dados
//
//  Created by Eduardo Escaleira on 05/04/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nameTextField: UITextField!
    var image: String = ""
    
    var logos: [String] = [
        "lego",
        "apple",
        "bmw",
        "lays",
        "renault",
        "twitter",
    ]
    
//    var shuffledLogos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCollectionView()
        configButton()
//        shuffledLogos = logos.shuffled()
    }
    
    private func configCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
    }
    
    private func configButton() {
        confirmButton.layer.cornerRadius = 12
        confirmButton.clipsToBounds = true
    }

    
    @IBAction func tappedConfirmButton(_ sender: UIButton) {
        
        let vc: SecondVC? = UIStoryboard(name: "SecondVC", bundle: nil).instantiateViewController(identifier: "SecondVC") { coder -> SecondVC? in return SecondVC(coder: coder, name: self.nameTextField.text ?? "", image: self.image)
        }
        vc?.modalPresentationStyle = .automatic
    //    vc?.name = nameTextField.text ?? ""
        present(vc ?? UIViewController(), animated: true)
        
    }
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return logos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell
        cell?.setupCell(image: logos[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cell = collectionView.cellForItem(at: indexPath) as? CustomCollectionViewCell
        
        // Anima o crescimento da imagem
        UIView.animate(withDuration: 0.2, animations: {
            cell?.logoImageView.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        }) { (success) in
            // Reduz a imagem de volta ao tamanho original
            UIView.animate(withDuration: 0.2, animations: {
                cell?.logoImageView.transform = CGAffineTransform.identity
            })
        }
        
        image = logos[indexPath.row]
        
    }
    
}
