//
//  ContentView.swift
//  EH
//
//  Created by Mikaela Caron on 8/9/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var predictions = [
        "Yes", "No", "It Will Pass",
        "Count on It", "Maybe", "You're Hot",
        "Ask Again", "No Doubt", "Absolutely",
        "Go For It", "Wait For It", "Not Now",
        "Cannot Tell Now", "Very Likely", "It is OK"
    ]
    
    @State private var randomNumber = 0
    
    var body: some View {
        Button {
            self.randomNumber = Int.random(in: 0..<predictions.count)
        } label: {
            Text("\(predictions[randomNumber])")
                .bold()
                .font(.title)
                .foregroundColor(Color.white)
                .frame(width: 300, height: 300)
                .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .clipShape(Circle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
