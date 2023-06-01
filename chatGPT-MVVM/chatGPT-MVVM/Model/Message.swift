//
//  Message.swift
//  chatGPT-MVVM
//
//  Created by Eduardo Escaleira on 01/06/23.
//

import Foundation


enum TypeMessage {
    case user
    case chatGPT
}


struct Message {
    var message: String
    var typeMessage: TypeMessage
    
    
}
