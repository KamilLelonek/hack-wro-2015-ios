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

class MapViewController: UIViewController, CLLocationManagerDelegate, GMSMapViewDelegate
{
    
    @IBOutlet weak var mapView: GMSMapView!
    let locationManager = CLLocationManager()
    var ideas: [Idea] = []
    var mapMarkerDetailView: InitiativeCollectionViewCell?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        ideas = sharedIdeas()
        
        println(ideas)
        
        var camera = GMSCameraPosition.cameraWithLatitude(51.09168, longitude:17.04015, zoom:14)
        mapView.camera = camera
        mapView.settings.myLocationButton = true
        mapView.myLocationEnabled = true
        mapView.delegate = self
        
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

    func mapView(mapView: GMSMapView!, didTapMarker marker: GMSMarker!) -> Bool
    {
        if let view = self.mapMarkerDetailView
        {
            
        } else {
            println("dziala: \(marker.title)")
            let nib = UINib(nibName: "InitiativeCollectionViewCell", bundle: nil)
            let view = nib.instantiateWithOwner(nil, options: nil)[0] as InitiativeCollectionViewCell
            view.frame = CGRect(x: 0, y: self.view.frame.size.height, width: self.view.frame.width, height: 110)
            self.view.addSubview(view)
            
            self.mapMarkerDetailView = view
            UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.2, options: nil, animations: { () -> Void in
                view.center.y -= 100.0
            }) { (finished) -> Void in
                
            }
        
        }
        
        return true
    }
    
    
    func mapView(mapView: GMSMapView!, didTapAtCoordinate coordinate: CLLocationCoordinate2D)
    {
        println("wcisnieta koordynata")
        if let view = self.mapMarkerDetailView
        {
            UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.2, options: nil, animations: { () -> Void in
                view.center.y += 100.0
                }) { (finished) -> Void in
                    self.mapMarkerDetailView?.removeFromSuperview()
                    self.mapMarkerDetailView = nil
            }
            
        }
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
}