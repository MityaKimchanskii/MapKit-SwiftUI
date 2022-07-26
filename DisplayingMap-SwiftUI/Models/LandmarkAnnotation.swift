//
//  LandmarkAnnotation.swift
//  DisplayingMap-SwiftUI
//
//  Created by Mitya Kim on 7/25/22.
//

import Foundation
import MapKit

final class LandmarkAnnotation: NSObject, MKAnnotation {
    
    let title: String?
    let coordinate: CLLocationCoordinate2D
    
    init(landmark: Landmark) {
        self.title = landmark.name
        self.coordinate = landmark.coordinate
    }
}
