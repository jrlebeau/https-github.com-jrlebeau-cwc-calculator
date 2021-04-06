//
//  ContentView.swift
//  Calculator
//
//  Created by James Lebeau on 4/6/21.
//

import SwiftUI


let darkerGrey = Color(CGColor(gray: 0.1, alpha: 1))
let darkGrey = Color(CGColor(gray: 0.3, alpha: 1))

struct CalculatorHome: View {
    var body: some View {
        
        GeometryReader { geometry in
            VStack(alignment: .trailing, spacing: 0) {

                Spacer()
                
                Text("0")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                    .lineLimit(1)
                    .padding(.leading)
                    .padding(.trailing)
                
                VStack(spacing: 10) {
                    
                    CalculatorRow(labels: ["CE", "", "", String("\u{00f7}")], colors: [darkGrey, darkGrey, darkGrey, .orange] )
                    CalculatorRow(labels: ["7", "8", "9", String("\u{00d7}")])
                    CalculatorRow(labels: ["4", "5", "6", String("-")])
                    CalculatorRow(labels: ["1", "2", "3", String("+")])
                    CalculatorRow(labels: ["0", ".", "", String("=")])

                }
                .frame(height: geometry.size.height * 0.7)
                .padding()
            }
            .background(darkerGrey)
            .edgesIgnoringSafeArea(.all)

        }
    }
}

struct CalculatorHome_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorHome()
    }
}
