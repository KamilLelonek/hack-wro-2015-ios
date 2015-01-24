//
//  InitiativeAddViewController.swift
//  TwojaInicjatywa
//
//  Created by Maciej Szewczyk on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

import UIKit



class InitiativeAddViewController: UIViewController {

    var ideaCoordinate: CLLocationCoordinate2D
    var ideaName: String
    
    init(ideaCoordinate: CLLocationCoordinate2D, ideaName: String){
    
        self.ideaCoordinate = ideaCoordinate
        self.ideaName = ideaName
        
        super.init()
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
        var newIdea: Idea = Idea(coordinates: ideaCoordinate, name: ideaName)
        
        
        
        
    }
}
