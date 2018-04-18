//
//  Point.swift
//  foursquare
//
//  Created by Juan Cabral on 15/03/18.
//  Copyright © 2018 Juan Cabral. All rights reserved.
//

import UIKit

struct Point <T> {
    
    var x : Double?
    var y : Double?
    var value : T?
    
    init(x: Double, y:Double){
        self.x = x
        self.y = y
    }
    
    init(x: Double, y:Double, value: T){
        self.x = x
        self.y = y
        self.value = value
    }
    
    subscript (x: Double, y: Double) -> Double {
        
        get {
            let xDist = self.x! - x
            let yDist = self.y! - y
            return Double(sqrt((xDist * xDist) + (yDist * yDist)))
        }
        
    }
    
}
