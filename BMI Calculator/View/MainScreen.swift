//
//  MainScreen.swift
//  BMI Calculator
//
//  Created by Yevhenii Vladichuk on 23/02/2023.
//

import Foundation
import UIKit

class MainScreen: UIView {
    
    let backgroundImage: UIImageView = {
        let backgroundImage = UIImageView()
        backgroundImage.image = UIImage(named: "mainBackground.pdf")
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        return backgroundImage
    }()
    
    let verticalStack: UIStackView = {
        let verticalStack = UIStackView()
        verticalStack.axis = .vertical
        verticalStack.distribution = .fillProportionally
        verticalStack.spacing = 5
        verticalStack.translatesAutoresizingMaskIntoConstraints = false
        return verticalStack
    }()
    
    let mainLabel: UILabel = {
        let mainLabel = UILabel()
        mainLabel.textAlignment = .left
        mainLabel.numberOfLines = 0
        mainLabel.text = "CALCULATE YOUR BMI"
        mainLabel.font = UIFont.boldSystemFont(ofSize: 44)
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        return mainLabel
    }()
    
    let heightHStackView: UIStackView = {
        let heightHStackView = UIStackView()
        heightHStackView.axis = .horizontal
        heightHStackView.distribution = .fillEqually
        heightHStackView.translatesAutoresizingMaskIntoConstraints = false
        return heightHStackView
    }()
    
    let heightLabel: UILabel = {
        let heightLabel = UILabel()
        heightLabel.text = "Height"
        heightLabel.textAlignment = .left
        heightLabel.translatesAutoresizingMaskIntoConstraints = false
        return heightLabel
    }()
    
    let heightValue: UILabel = {
        let heightValue = UILabel()
        heightValue.text = "3"
        heightValue.textAlignment = .right
        heightValue.translatesAutoresizingMaskIntoConstraints = false
        return heightValue
    }()
    
    let heightSlider: UISlider = {
        let heightSlider = UISlider()
        heightSlider.minimumValue = 0
        heightSlider.maximumValue = 3
        heightSlider.value = heightSlider.maximumValue/2
        heightSlider.tintColor = .black
        heightSlider.thumbTintColor = .black
        heightSlider.translatesAutoresizingMaskIntoConstraints = false
        return heightSlider
    }()
    
    let weightHStackView: UIStackView = {
        let weightStackView = UIStackView()
        weightStackView.axis = .horizontal
        weightStackView.distribution = .fillEqually
        weightStackView.translatesAutoresizingMaskIntoConstraints = false
        return weightStackView
    }()
    
    let weightLabel: UILabel = {
        let weightLabel = UILabel()
        weightLabel.text = "Weight"
        weightLabel.textAlignment = .left
        weightLabel.translatesAutoresizingMaskIntoConstraints = false
        return weightLabel
    }()
    
    let weightValue: UILabel = {
        let weightValue = UILabel()
        weightValue.text = "80"
        weightValue.textAlignment = .right
        weightValue.translatesAutoresizingMaskIntoConstraints = false
        return weightValue
    }()
    
    let weightSlider: UISlider = {
        let weightSlider = UISlider()
        weightSlider.minimumValue = 0
        weightSlider.maximumValue = 130
        weightSlider.value = weightSlider.maximumValue/2
        weightSlider.tintColor = .black
        weightSlider.thumbTintColor = .black
        weightSlider.translatesAutoresizingMaskIntoConstraints = false
        return weightSlider
    }()
    
    let calculateButton: UIButton = {
        let calculateButton = UIButton()
        calculateButton.setTitle("CALCULATE", for: .normal)
        calculateButton.backgroundColor = #colorLiteral(red: 0.9099040031, green: 0.2311765254, blue: 0.219265759, alpha: 1)
        calculateButton.layer.cornerRadius = 25
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        return calculateButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViewsWithConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addViewsWithConstraints()
    }
    
    func addViewsWithConstraints() {
        addSubview(backgroundImage)
        addSubview(verticalStack)
        verticalStack.addArrangedSubview(mainLabel)
        verticalStack.addArrangedSubview(heightHStackView)
        heightHStackView.addArrangedSubview(heightLabel)
        heightHStackView.addArrangedSubview(heightValue)
        verticalStack.addArrangedSubview(heightSlider)
        verticalStack.addArrangedSubview(weightHStackView)
        weightHStackView.addArrangedSubview(weightLabel)
        weightHStackView.addArrangedSubview(weightValue)
        verticalStack.addArrangedSubview(weightSlider)
        verticalStack.addArrangedSubview(calculateButton)
        
        
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            verticalStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            verticalStack.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            verticalStack.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            verticalStack.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            heightHStackView.heightAnchor.constraint(equalToConstant: 21),
            heightSlider.heightAnchor.constraint(equalToConstant: 60),
            weightHStackView.heightAnchor.constraint(equalToConstant: 21),
            weightSlider.heightAnchor.constraint(equalToConstant: 60),
            calculateButton.heightAnchor.constraint(equalToConstant: 51)
        ])
    }
}
