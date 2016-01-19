//
//  Pin.swift
//  ExtremaPins2
//
//  Created by Fhict on 19/01/16.
//  Copyright © 2016 Mick Vranken. All rights reserved.
//

import Foundation
import MapKit

class Pin: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var latitude: Double
    var longitude:Double
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}