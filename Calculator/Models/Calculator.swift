//
//  Calculator.swift
//  Calculator
//
//  Created by James Lebeau on 4/7/21.
//

import Foundation


class Calculator: ObservableObject {
    
    @Published var displayValue = "0"
    
    var currentOp: Operator?
    
    var currentNumber: Double? = 0
    
    var previousNumber: Double?
    
    var equaled = false
    
    var decimalPlace = 0
    
    
    func buttonPresse(lable: String) {
        if lable == "CE" {
            
        } else if lable == "=" {
            equalsClicked()
        } else if lable == "." {
            decimalClicked()
        } else if let value = Double(lable) {
            numberPressed(value: value)
        } else {
            operatorPressed(op: Operator())
        }
    }
    
    func reset() {
        
    }
    
    func equalsClicked() {
        
    }
    
    func decimalClicked() {
        
    }
    
    func numberPressed(value: Double) {
        
    }
    
    func operatorPressed(op: Operator) {
        
    }
    
}
