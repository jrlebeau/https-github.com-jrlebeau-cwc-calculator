//
//  CalculatorButtonView.swift
//  Calculator
//
//  Created by James Lebeau on 4/6/21.
//

import SwiftUI

struct CalculatorButtonView: View {
    
    @EnvironmentObject var calculator: Calculator
    
    var label: String
    var color: Color
    
    var body: some View {
        
        Button(action: {
            calculator.buttonPresse(lable: label)
        }, label: {
            ZStack {
                Circle()
                    .fill(color)
                
                Text(label)
                    .font(.title)
            }
        })
        .accentColor(.white)
     }
}

struct CalculatorButtonView_Previews: PreviewProvider {
    static var previews: some View {
            CalculatorButtonView(label: "1", color: .gray)
                .previewLayout(.fixed(width: 100, height: 100))
                .environmentObject(Calculator())
 
    }
}

