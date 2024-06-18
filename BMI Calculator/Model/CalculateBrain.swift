//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Bruno  on 15/06/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculateBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more tacos!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Your weight is normal!", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less tacos!", color: .red)
        }
    }
    
    func getBMIValue() -> String {
        let bmiDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiDecimal
    }
    
    func getAdvice() -> String? {
        return bmi?.advice ?? "BMI Calculator"
    }
    
    func getColor() -> UIColor? {
        return bmi?.color ?? .white
    }
}
