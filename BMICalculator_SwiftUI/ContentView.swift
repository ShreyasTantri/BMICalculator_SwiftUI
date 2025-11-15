//
//  ContentView.swift
//  BMICalculator_SwiftUI
//
//  Created by CCS038 on 15/11/25.
//

import SwiftUI
struct ContentView: View {
    @State var weight = ""
    @State var height = ""
    
    var body: some View {
        VStack {
            Text("Weight")
            TextField("Enter weight", text: $weight).textFieldStyle(.roundedBorder)
            
            Text("Height")
            TextField("Enter height", text: $height).textFieldStyle(.roundedBorder)
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
