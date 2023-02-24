//
//  ResultScreen.swift
//  BMI Calculator
//
//  Created by Yevhenii Vladichuk on 24/02/2023.
//

import Foundation
import UIKit

class ResultScreen: UIView {
        
    let vSctack: UIStackView = {
        let vStack = UIStackView()
        vStack.axis = .vertical
        vStack.distribution = .fillProportionally
        vStack.spacing = 5
        vStack.translatesAutoresizingMaskIntoConstraints = false
        return vStack
    }()
    
    let titleLabel: UILabel = {
        let titleLable = UILabel()
        titleLable.text = "YOUR RESULT"
        titleLable.textColor = .white
        titleLable.font = UIFont.boldSystemFont(ofSize: 35)
        titleLable.textAlignment = .center
        return titleLable
    }()
    
    let resultLabel: UILabel = {
        let resultLabel = UILabel()
        resultLabel.textColor = .white
        resultLabel.font = UIFont.boldSystemFont(ofSize: 80)
        resultLabel.textAlignment = .center
        return resultLabel
    }()
    
    let adviceLabel: UILabel = {
        let adviceLabel = UILabel()
        adviceLabel.textColor = .white
        adviceLabel.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.light)
        adviceLabel.textAlignment = .center
        return adviceLabel
    }()
    
    let recalculateButton: UIButton = {
       let recalculateButton = UIButton()
        recalculateButton.setTitle("RECALCULATE", for: .normal)
        recalculateButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        recalculateButton.layer.cornerRadius = 25
        recalculateButton.translatesAutoresizingMaskIntoConstraints = false
        return recalculateButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addElements()
    }
    
    func addElements() {
        addSubview(vSctack)
        vSctack.addArrangedSubview(titleLabel)
        vSctack.addArrangedSubview(resultLabel)
        vSctack.addArrangedSubview(adviceLabel)
        addSubview(recalculateButton)
        
        NSLayoutConstraint.activate([
            
            vSctack.centerXAnchor.constraint(equalTo: centerXAnchor),
            vSctack.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            recalculateButton.heightAnchor.constraint(equalToConstant: 51),
            recalculateButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -35),
            recalculateButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            recalculateButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
}
