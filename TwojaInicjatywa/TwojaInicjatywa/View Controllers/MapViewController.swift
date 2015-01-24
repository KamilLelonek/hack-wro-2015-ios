//
//  MapViewController.swift
//  TwojaInicjatywa
//
//  Created by Maciej Szewczyk on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

import UIKit
import CoreLocation


let MapToDetailsSegueIdentifier = "MapToDetails"
let MapToAddInitiativeSegueIdentifier = "MapToAddInitiative"

class MapViewController: UIViewController, CLLocationManagerDelegate
{
    
    @IBOutlet weak var mapView: GMSMapView!
    let locationManager = CLLocationManager()
    var ideas: [Idea] = []
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        var idea1 = Idea(coordinates: CLLocationCoordinate2DMake(51.1220568429801, 17.0339102902900), name: "zbudować kościół")
        var idea2 = Idea(coordinates: CLLocationCoordinate2DMake(51.1220568429222, 17.0339902903400), name: "postawić burdel")
        
        ideas.append(idea1)
        ideas.append(idea2)

        println(ideas)
        
        var camera = GMSCameraPosition.cameraWithLatitude(51.09168, longitude:17.04015, zoom:14)
        mapView.camera = camera
        mapView.settings.myLocationButton = true
        mapView.myLocationEnabled = true
        
        for idea in ideas
        {
            var marker = GMSMarker(position: idea.coordinates)
            marker.title = idea.name
            marker.map = mapView
        }
        
        
        
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled()
        {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }
        
    }
    
    
    func locationManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus)
    {
        if status == .AuthorizedWhenInUse
        {
            
            locationManager.startUpdatingLocation()
            
            mapView.myLocationEnabled = true
            mapView.settings.myLocationButton = true
        }
    }
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!)
    {
        var locValue:CLLocationCoordinate2D = manager.location.coordinate
        println("locations = \(locValue.latitude) \(locValue.longitude)")
        
        if let location = locations.first as? CLLocation
        {
            mapView.camera = GMSCameraPosition(target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
            locationManager.stopUpdatingLocation()
        }
    }

    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
}