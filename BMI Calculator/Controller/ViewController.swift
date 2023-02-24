//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Yevhenii Vladichuk on 23/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    let mainScreen = MainScreen()
    var calculator = CalculatorBMI()
    
    override func loadView() {
        super.loadView()
        view = mainScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainScreen.calculateButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        mainScreen.heightSlider.addTarget(self, action: #selector(heightSliderChanged), for: .valueChanged)
        mainScreen.weightSlider.addTarget(self, action: #selector(weightSliderChanged), for: .valueChanged)
    }
    
    @objc func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        mainScreen.heightValue.text = "\(height)m"
    }
    
    @objc func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        mainScreen.weightValue.text = "\(weight)kg"
        
    }
    
    @objc func buttonTapped() {
        
        let height = mainScreen.heightSlider.value
        let weight = mainScreen.weightSlider.value
        
        calculator.calculateBMI(height: height, weight: weight)
        
        let resultVC = ResultViewController()
        
        resultVC.backgroundColor = calculator.getColor()
        resultVC.result = calculator.getValue()
        resultVC.advice = calculator.getAdvice()
        present(resultVC, animated: true, completion: nil)
    }
    
}

