//
//  CalculatorBMI.swift
//  BMI Calculator
//
//  Created by Yevhenii Vladichuk on 24/02/2023.
//

import Foundation
import UIKit

struct CalculatorBMI {
    
    var bmi: BMI?
    
    func getValue()-> String {
        let valueTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return valueTo1DecimalPlace
    }
    
    func getAdvice()-> String {
        let advice = bmi?.advice ?? "No advice"
        return advice
    }
    
    func getColor()-> UIColor {
        let color = bmi?.color ?? UIColor.systemGray
        return color
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "YOU NEED TO EAT MORE", color: UIColor.systemBlue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "YOU ARE IN GOOD SHAPE", color: UIColor.systemGreen)
        }else {
            bmi = BMI(value: bmiValue, advice: "YOU NEED TO DO MORE SPORT", color: UIColor.systemRed)
        }
    }
}
