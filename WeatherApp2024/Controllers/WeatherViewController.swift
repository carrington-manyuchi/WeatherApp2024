//
//  ViewController.swift
//  WeatherApp2024
//
//  Created by DA MAC M1 157 on 2023/09/25.
//

import UIKit

class WeatherViewController: UIViewController {
    
    private let primaryView = CurrentWeather()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(primaryView  )
        configureConstraints()
        getLocation()
    }
    
    private func getLocation() {
        LocationManager.shared.getCurrentLocation { location in
            print(String(describing: location))
            
            WeatherManager.shared.getWeather(for: location)
        }
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


