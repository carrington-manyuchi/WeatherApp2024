//
//  SettingsViewController.swift
//  WeatherApp2024
//
//  Created by DA MAC M1 157 on 2023/09/25.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private let primaryView = SettingsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(primaryView)
        configureConstraints()
    }
    
    
    private func configureConstraints() {
        let primaryViewConstraints = [
            primaryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            primaryView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            primaryView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            primaryView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(primaryViewConstraints)
    }
    
}


