//
//  TabViewController.swift
//  WeatherApp2024
//
//  Created by DA MAC M1 157 on 2023/09/25.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tab1 = WeatherViewController()
        let tab2 = SettingsViewController()
        
        tab1.title = "Weather"
        tab2.title = "Settings"
        
        let nav1 = UINavigationController(rootViewController: tab1)
        let nav2 =  UINavigationController(rootViewController: tab2)
        
        nav1.tabBarItem = UITabBarItem(title: "Weather", image: UIImage(systemName: "cloud.sun"), selectedImage: UIImage(systemName: "cloud.sun.fill"))
        nav2.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gearshape"), selectedImage: UIImage(systemName: "gearshape.fill"))
        
        
        setViewControllers([nav1, nav2], animated: true)
    }

}
