//
//  HomeViewModel.swift
//  chatGPT-MVVM
//
//  Created by Eduardo Escaleira on 01/06/23.
//

import UIKit

class HomeViewModel: NSObject {
    
    private var messageList: [Message] = [Message(message: "Oieeeee", typeMessage: .user),
                                          Message(message: "Tudo ótimo!", typeMessage: .chatGPT),
    ]
    
    var numberOfRowsInSection: Int {
        return messageList.count
    }
    
    func loadCurrentMessage(indexPath: IndexPath) -> Message {
        return messageList[indexPath.row]
    }
    
    func heightForForAt(indexPath: IndexPath) -> CGFloat {
        return messageList[indexPath.row].message.heightWithConstrainedWidth(width: 220, font: UIFont(name: "HelveticaNeue-Medium", size: 16) ?? UIFont()) + 60
    }
    
    public func addMessage(message: String, type: TypeMessage = .user) {
        messageList.insert(Message(message: message.trimmingCharacters(in: .whitespacesAndNewlines), typeMessage: type), at: .zero)
    }

}

