//
//  ContentView.swift
//  MultiplicationTable
//
//  Created by Leila on 12/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var multiplyBy = 2
    @State private var selectedAmountOfQuestions = 10
    let amountOfQuestions = [5, 10, 20]
    
    var body: some View {
        NavigationStack {
            Form {
                Stepper("Number for practice: \(multiplyBy)", value: $multiplyBy, in: 2...12, step: 1)
                Section("Amount of questions") {
                    Picker("Amount of questions", selection: $selectedAmountOfQuestions) {
                        ForEach(amountOfQuestions, id: \.self) {
                            Text($0, format: .number)
                        }
                    }.pickerStyle(.segmented)
                }
            } // FORM
        } // NAV STACK
    } // BODY
} // STRUCT

#Preview {
    ContentView()
}
