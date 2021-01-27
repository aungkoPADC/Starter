//
//  GenreVO.swift
//  Starter
//
//  Created by Aung Ko Ko Thet on 28/01/2021.
//

import Foundation

class GenreVO {
    
    var name:String="ACTION"
    var isSelected:Bool=false
    
    init(name:String,isSelected:Bool) {
        self.name = name
        self.isSelected = isSelected
    }
}
