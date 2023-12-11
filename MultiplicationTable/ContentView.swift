//
//  ContentView.swift
//  MultiplicationTable
//
//  Created by Leila on 12/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var multiplyBy = 2
    
    var body: some View {
        VStack {
            Stepper("Number for practice: \(multiplyBy)", value: $multiplyBy, in: 2...12, step: 1)
        }.padding()
        
    }
}

#Preview {
    ContentView()
}
