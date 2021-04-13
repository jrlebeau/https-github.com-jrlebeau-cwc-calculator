//
//  Operator.swift
//  Calculator
//
//  Created by James Lebeau on 4/7/21.
//

import Foundation

class Operator {
    
    var op: (Double, Double) -> Double
    var isDivision = false
    
    init(_ string: String) {
        
        if string == "+" {
            self.op = (+)
            
        } else if string == "-" {
            self.op = (-)
            
        } else if string == String("\u{00f7}") {
            self.op = (/)
            self.isDivision = true
            
        } else {
            self.op = (*)
            
        }
    }
    
}
