//
//  Idea.swift
//  TwojaInicjatywa
//
//  Created by Pumpkin K on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

class Idea{
    var coordinates : CLLocationCoordinate2D
    var name: String
    var comments: [String]?
    var rank = (pro : 0, con : 0)
    var photo : UIImage?
    
    
    init( coordinates: CLLocationCoordinate2D, name: String){
    
        self.coordinates = coordinates
        self.name = name
    }
    
}
