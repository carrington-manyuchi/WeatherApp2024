//
//  LocationManager.swift
//  WeatherApp2024
//
//  Created by DA MAC M1 157 on 2023/09/25.
//

import Foundation
import CoreLocation


final class LocationManager: NSObject {
    
    private let manager = CLLocationManager()
    
    static let shared = LocationManager()
    
    private var locationFetchCompletion: ((CLLocation) -> Void)?
    
    private var location: CLLocation? {
        didSet {
            guard let l = location else {
                return
            }
            locationFetchCompletion?(l)
        }
    }
    
    public func getCurrentLocation(completion: @escaping (CLLocation) -> Void) {
        self.locationFetchCompletion = completion
        manager.requestWhenInUseAuthorization()
        manager.delegate = self
        manager.startUpdatingLocation()
    }
}


//MARK: Location
extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }
        self.location = location
        manager.stopUpdatingLocation()
    }
}
