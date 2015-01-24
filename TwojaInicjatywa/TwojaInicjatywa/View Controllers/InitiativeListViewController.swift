//
//  InitiativeListViewController.swift
//  TwojaInicjatywa
//
//  Created by Maciej Szewczyk on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

import UIKit

let InitiativeToDetailsSegueIdentifier = "InitiativeToDetails"
let InitiativeListToAddInitiativeSegueIdentifier = "InitiativeListToAddInitiative"

class InitiativeListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.yellowColor()
    }
    
    @IBAction func addInitiative(sender: AnyObject) {
        self.performSegueWithIdentifier(InitiativeListToAddInitiativeSegueIdentifier, sender: sender)
    }
    
}
