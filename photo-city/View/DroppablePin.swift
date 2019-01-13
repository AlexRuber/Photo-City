//
//  DroppablePin.swift
//  photo-city
//
//  Created by Mihai Ruber on 1/12/19.
//  Copyright © 2019 Mihai Ruber. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D,identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
    
    
}
