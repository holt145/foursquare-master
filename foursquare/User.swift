//
//  User.swift
//  foursquare
//
//  Created by Juan Cabral on 15/02/18.
//  Copyright © 2018 Juan Cabral. All rights reserved.
//

import Foundation

class User {
    var id: String?
    var name: String?
    var image: String?
    
    init(name: String, image: String){
        self.name = name
        self.image = image
        self.id = UUID().uuidString
    }
    
}
