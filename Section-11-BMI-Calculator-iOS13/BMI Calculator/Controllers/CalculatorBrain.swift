//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Temirlan Tlektessov on 2021/09/16.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiVal = weight / (height * height)
        if bmiVal < 18.5{
            bmi = BMI(value: bmiVal, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if bmiVal < 24.9{
            bmi = BMI(value: bmiVal, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else {
            bmi = BMI(value: bmiVal, advice: "Eat less pies!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func getBMIValue() -> String{
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
}
