//
//  Idea.swift
//  TwojaInicjatywa
//
//  Created by Pumpkin K on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

import Foundation
import UIKit

class Idea{
    var coordinates : (latitude: Double, attitude: Double)
    var comments: [String]?
    var rank = (pro : 0, con : 0)
    var photo : UIImage?
    
    
    init( coordinates: (latitude: Double, attitude: Double)){
        
        self.coordinates.attitude = coordinates.attitude
        self.coordinates.latitude = coordinates.latitude
        
    }
    
}
