//
//  LandmarkAnnotation.swift
//  Contento
//
//  Created by Sanchitha Dinesh on 3/24/20.
//  Copyright © 2020 hackathon. All rights reserved.
//

import MapKit
import UIKit


final class LandmarkAnnotation: NSObject, MKAnnotation {
    let title: String?
    let coordinate: CLLocationCoordinate2D

    init(landmark: Landmark) {
        self.title = landmark.name
        self.coordinate = landmark.coordinate
    }
}
