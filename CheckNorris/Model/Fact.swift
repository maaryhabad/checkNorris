//
//  Fact.swift
//  CheckNorris
//
//  Created by Mariana Beilune Abad on 23/11/19.
//  Copyright © 2019 Mariana Beilune Abad. All rights reserved.
//

import Foundation

class Fact {
    
    var icon_url: String
    var url: String
    var id: String
    var icon: String
    var value: String
    var category: [String] = ["animal","career","celebrity","dev","explicit","fashion","food","history","money","movie","music","political","religion","science","sport","travel"]
    
    init(icon_url: String, url: String, id: String, icon: String, value: String, category: [String]) {
        self.icon_url = icon_url
        self.url = url
        self.id = id
        self.icon = icon
        self.value = value
        self.category = category
    }
}
