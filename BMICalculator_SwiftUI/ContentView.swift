//
//  ContentView.swift
//  BMICalculator_SwiftUI
//
//  Created by CCS038 on 15/11/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var weight = ""
    @State private var height = ""
    @State private var bmiResult = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            Text("BMI Calculator")
                .font(.largeTitle.bold())
                .padding(.bottom, 20)
            
                Text("Weight (kg)")
                TextField("Enter weight", text: $weight)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                
                Text("Height (m)")
                TextField("Enter height", text: $height)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
            
            Button("Calculate BMI") {
                calculateBMI()
            }
            .buttonStyle(.borderedProminent)
            .padding(.top, 10)
            
            if !bmiResult.isEmpty {
                Text("Your BMI: \(bmiResult)")
                    .font(.title3)
                    .padding(.top, 20)
            }
            
            Spacer()
        }
        .padding()
    }
    
    func calculateBMI() {
        guard let w = Double(weight),
              let h = Double(height),
              h > 0 else {
            bmiResult = "Invalid input"
            return
        }
        
        let bmi = w / (h * h)
        bmiResult = String(format: "%.2f", bmi)
    }
}

#Preview {
    ContentView()
}
