//
//  String+Extension.swift
//  chatGPT-MVVM
//
//  Created by Eduardo Escaleira on 01/06/23.
//

import Foundation
import UIKit

extension String {
    
    func size(ofFont font: UIFont) -> CGSize {
        return (self as NSString).size(withAttributes: [NSAttributedString.Key.font : font])
    }
    
    func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundinBox = self.boundingRect(with: constraintRect, options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: [NSAttributedString.Key.font : font], context: nil)
        return boundinBox.height
    }
    
}
