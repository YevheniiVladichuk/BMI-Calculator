//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Yevhenii Vladichuk on 24/02/2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    let resultScreen = ResultScreen()
    var backgroundColor: UIColor?
    var result: String?
    var advice: String?
    
    override func loadView() {
        view = resultScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = backgroundColor
        resultScreen.resultLabel.text = result
        resultScreen.adviceLabel.text = advice
        
        resultScreen.recalculateButton.addTarget(self, action: #selector(backToMain), for: .touchUpInside)
    }
    
    @objc func backToMain() {
        dismiss(animated: true,completion: nil)
    }
}
