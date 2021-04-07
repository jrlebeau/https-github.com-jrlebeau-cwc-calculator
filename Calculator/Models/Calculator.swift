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
            displayValue = "0"
            reset()
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
    
    func setDisplayValue(number: Double) {
        if number == floor(number) {
            displayValue = "\(Int(number))"
        } else {
            let decimalPlaces = 10
            displayValue = "\(round(number * pow(10, decimalPlaces)) / pow(10, decimalPlaces))"
        }
    }
    
    func reset() {
        currentOp = nil
        currentNumber = 0
        previousNumber = nil
        equaled = false
        decimalPlace = 0
    }
    
    func equalsClicked() {
        
    }
    
    func decimalClicked() {
        
    }
    
    func numberPressed(value: Double) {
        if equaled {
            currentNumber = nil
            previousNumber = nil
            equaled = false
        }
        
        if currentNumber == nil {
            currentNumber = value / pow(10, decimalPlace)
        } else {
            if decimalPlace == 0 {
                currentNumber = currentNumber! * 10 + value
            } else {
                currentNumber = currentNumber! + value / pow(10, decimalPlace)
                decimalPlace += 1
            }
        }
        setDisplayValue(number: currentNumber!)
        
    }
    
    func operatorPressed(op: Operator) {
        
    }
    
    
    
}

func pow(_ base: Int, _ exp: Int) -> Double {
    return pow(Double(base), Double(exp))
}
