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

class InitiativeListViewController: UIViewController, InitiativeListCollectionViewControllerDelegate {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func didChangeSort(sender: AnyObject) {
        println("Sort")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.grayColor()
    }
    
    @IBAction func addInitiative(sender: AnyObject) {
        self.performSegueWithIdentifier(InitiativeListToAddInitiativeSegueIdentifier, sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "collectionViewEmbeded" {
            let cvc = segue.destinationViewController as InitiativeListCollectionViewController
            cvc.delegateIdeas = self
            
        } else if segue.identifier == InitiativeToDetailsSegueIdentifier {
            let vc = segue.destinationViewController as InitiativeDetailsViewController
        }
    }
    
    func initiativeListCollectionViewController(collectionViewController: UICollectionViewController, didSelectIdea idea: Idea) {
        self.performSegueWithIdentifier(InitiativeToDetailsSegueIdentifier, sender: self)
    }
}
