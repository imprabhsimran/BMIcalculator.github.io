//
//  calculateBrain.swift
//  BMI Calculator
//
//  Created by Prabh Simran Singh on 10/05/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
struct CalculateBrain {
    var bmi: Bmi?
    func getBmiValue() ->String{
        let bmiToDecimalPlace = String(format: "%.1f", bmi?.advice ?? 0.0)
        return bmiToDecimalPlace
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.blue
    }
    func getBmiValue() -> Float {
        return bmi?.value ?? 0.0
    }
    
    mutating func calculateBmi(height: Float,weight : Float) {
        let bmiValue = Double((weight / (height*height)))
        if bmiValue < 18.5{
            bmi = Bmi(value: Float(bmiValue), advice: "You are underweight Eat as much as you can", color: UIColor.blue)
        }else if bmiValue < 24.9{
            bmi = Bmi(value: Float(bmiValue), advice: "You are healthy", color: UIColor.green)
        }else{
            bmi = Bmi(value: Float(bmiValue), advice: "You are overweight hit the gym", color: UIColor.red)
        }
    }
}
