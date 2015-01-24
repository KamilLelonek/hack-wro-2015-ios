//
//  MapViewController.swift
//  TwojaInicjatywa
//
//  Created by Maciej Szewczyk on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

import UIKit

let MapToDetailsSegueIdentifier = "MapToDetails"
let MapToAddInitiativeSegueIdentifier = "MapToAddInitiative"

class MapViewController: UIViewController
{
    
    @IBOutlet weak var mapView: GMSMapView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        var camera = GMSCameraPosition.cameraWithLatitude(51.09168, longitude:17.04015, zoom:14)
        mapView = GMSMapView.mapWithFrame(CGRectZero, camera:camera)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}