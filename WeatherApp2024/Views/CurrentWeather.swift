//
//  CurrentWeather.swift
//  WeatherApp2024
//
//  Created by DA MAC M1 157 on 2023/09/25.
//

import UIKit

final class CurrentWeather: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
