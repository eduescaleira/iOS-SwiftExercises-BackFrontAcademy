//
//  HomeService.swift
//  chatGPT-MVVM
//
//  Created by Eduardo Escaleira on 01/06/23.
//

import UIKit
import OpenAISwift

class HomeService {

    func sendMessage(text: String, completion: @escaping (Result<String, OpenAIError>) -> Void) {
        OpenAISwift(authToken: "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").sendCompletion(with: text, model: .gpt3(.davinci), maxTokens: 4000) { result in
            switch result {
            case .success(let data):
                completion(.success(data.choices?.first?.text ?? ""))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
        
        
    }
    
}
