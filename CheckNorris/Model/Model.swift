//
//  Model.swift
//  CheckNorris
//
//  Created by Mariana Beilune Abad on 13/12/19.
//  Copyright © 2019 Mariana Beilune Abad. All rights reserved.
//

import Foundation

class Model {
    static let instance = Model()
    
    private init() {
        
    }
    
    var facts: [Fact] = []
}
