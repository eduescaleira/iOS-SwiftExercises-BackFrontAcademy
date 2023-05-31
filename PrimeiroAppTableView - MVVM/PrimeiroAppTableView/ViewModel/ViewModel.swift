//
//  ViewModel.swift
//  PrimeiroAppTableView
//
//  Created by Eduardo Escaleira on 11/05/23.
//

import UIKit

class ViewModel {
    
    private var personList: [Person] = [Person(name: "João"),
                                Person(name: "Eduardo"),
                                Person(name: "Analu"),
                                Person(name: "Diana"),
                                Person(name: "Joaquim"),
                                Person(name: "Caio"),
    ]
    
    
    //MARK: VARIÁVEL COMPUTADA É APENAS PARA PEGAR UM VALOR.
    var getNumberOfRowsInSection: Int {
        return personList.count
    }
    
    func getCellForRow(indexPath: IndexPath) -> Person {
        return personList[indexPath.row]
    }
    
    
    
    
    
}
