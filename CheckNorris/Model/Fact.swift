//
//  Fact.swift
//  Norris Facts
//
//  Created by Mariana Beilune Abad on 29/11/19.
//  Copyright © 2019 Mariana Beilune Abad. All rights reserved.
//

import Foundation

class Fact {
    
    var factId: String
    var url: String
    var value: String
    var categorias: [String]
    
    init(factId: String, url: String, value: String, categorias: [String]) {
        self.factId = factId
        self.url = url
        self.value = value
        self.categorias = categorias
    }
    
    static func mapToObject(factData: [String: Any]) -> Fact {
        let factId: String = (factData["id"] as? String)!
        let url: String = (factData["url"] as? String)!
        let value: String = (factData["value"] as? String)!
        let categorias: [String] = (factData["categories"] as? [String])!
        
        let newFact = Fact(factId: factId, url: url, value: value, categorias: categorias)
        
        return newFact
    }
}
