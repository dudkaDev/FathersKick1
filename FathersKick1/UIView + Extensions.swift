//
//  UIView + Extensions.swift
//  FathersKick1
//
//  Created by Андрей Абакумов on 01.03.2023.
//

import UIKit

extension UIView {
    
    func addShadowOnView() {
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 10.0)
        layer.shadowOpacity = 0.5
        layer.shadowRadius = 5
    }
    
    func addGradientOnView() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.cornerRadius = 20
        gradientLayer.colors = [
            UIColor.purple.cgColor,
            UIColor.orange.cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
