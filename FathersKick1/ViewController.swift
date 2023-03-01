//
//  ViewController.swift
//  FathersKick1
//
//  Created by Андрей Абакумов on 01.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let squareView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.backgroundColor = .green
        view.addShadowOnView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        squareView.addGradientOnView()
    }
    
    private func setupViews() {
        view.backgroundColor = .white

        view.addSubview(squareView)
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            squareView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            squareView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            squareView.widthAnchor.constraint(equalToConstant: 100),
            squareView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}

