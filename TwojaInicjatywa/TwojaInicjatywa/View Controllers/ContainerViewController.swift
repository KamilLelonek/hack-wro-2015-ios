//
//  ViewController.swift
//  TwojaInicjatywa
//
//  Created by Maciej Szewczyk on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

import UIKit

let ContainerToProfileSegueIdentifier = "ContainerToProfile"

class ContainerViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tabBar.removeFromSuperview()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var mapViewController: UIViewController?
    var initiativeListViewController: UIViewController?

    func showMapViewController() {
        
    }
    
    func showInitiativeListViewController() {
        
    }

}

