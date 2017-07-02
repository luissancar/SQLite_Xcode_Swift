//
//  Product.swift
//  ejer16_sqlite_xcode
//
//  Created by Luis José Sánchez Carrasco on 1/7/17.
//  Copyright © 2017 Luis José Sánchez Carrasco. All rights reserved.
//

import Foundation

class Product: CustomStringConvertible {
    let id: Int64?
    var name: String
    var Name2: String
    
    init(id: Int64, name: String, Name2: String) {
        self.id = id
        self.name = name
        self.Name2 = Name2
    }
    var description: String {
        return "id = \(self.id ?? 0), name = \(self.name), Name2 = \(self.Name2)"
    }
}
