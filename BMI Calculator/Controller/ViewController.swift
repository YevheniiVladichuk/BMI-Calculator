//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Yevhenii Vladichuk on 23/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    let mainScreen = MainScreen()
    
    override func loadView() {
        super.loadView()
        view = mainScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainScreen.calculateButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
    }
    
    @objc func buttonTapped() {
        let resultVC = ResultViewController()
        resultVC.backgroundColor = .systemGreen
        resultVC.result = "20"
        resultVC.advice = "EAT MORE"
        present(resultVC, animated: true, completion: nil)
    }
    
}

