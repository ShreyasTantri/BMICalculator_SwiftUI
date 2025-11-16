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
            
            HStack {
                Spacer()
                Text("BMI Calculator")
                    .font(.largeTitle.bold())
                Spacer()
            }
            .padding(.bottom, 20)
            
                Text("Weight (kg)")
                TextField("Enter weight", text: $weight)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                
                Text("Height (cm)")
                TextField("Enter height", text: $height)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
            
            HStack {
                Spacer()
                
                Button("Calculate BMI") {
                    calculateBMI()
                }
                .font(.title3.bold())    // <- changed font
                .buttonStyle(.borderedProminent)
                
                Spacer()
            }
            .padding(.top, 70)
            .buttonStyle(.borderedProminent)
            
            if !bmiResult.isEmpty {
                HStack {
                    Spacer()
                    Text("Your BMI: \(bmiResult)")
                        .font(.title3)
                    Spacer()
                }
                .padding(.top, 100)
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
        
        let h_cm = h/100
        
        let bmi = w / (h_cm * h_cm)
        bmiResult = String(format: "%.1f", bmi)
    }
}

#Preview {
    ContentView()
}
