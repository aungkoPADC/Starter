//
//  ViewExtensions.swift
//  Starter
//
//  Created by Aung Ko Ko Thet on 29/01/2021.
//

import Foundation
import UIKit

extension UILabel{
    
    func underlineText(text:String){
        let attributedString = NSMutableAttributedString.init(string: text)
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range: NSRange(location: 0, length: attributedString.length))
        self.attributedText = attributedString
    }
}
