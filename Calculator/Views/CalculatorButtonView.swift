//
//  CalculatorButtonView.swift
//  Calculator
//
//  Created by James Lebeau on 4/6/21.
//

import SwiftUI

struct CalculatorButtonView: View {
    
    var label: String
    var color: Color
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CalculatorButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CalculatorButtonView(label: "1", color: .gray)
                .previewLayout(.fixed(width: 100, height: 100))
            CalculatorButtonView(label: "1", color: .gray)
                .previewLayout(.fixed(width: 100, height: 100))
        }
    }
}

