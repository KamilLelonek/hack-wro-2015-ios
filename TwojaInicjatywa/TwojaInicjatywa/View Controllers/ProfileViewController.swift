//
//  ProfileViewController.swift
//  TwojaInicjatywa
//
//  Created by Maciej Szewczyk on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

//zuza.zapolska@gmail.com

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var propositionsLabel: UILabel!
    @IBOutlet var votesForLabel: UILabel!
    @IBOutlet var votesAgainstLabel: UILabel!
    

    
    
    override func viewDidLoad() {
        var votesFor : Int = 0
        var votesAgainst : Int = 0
        
        var idea1 = Idea(coordinates: CLLocationCoordinate2DMake(51.1220568429801, 17.0339102902900), name: "zbudować kościół")
        var idea2 = Idea(coordinates: CLLocationCoordinate2DMake(51.1220568429222, 17.0339902903400), name: "postawić burdel")
        
        idea1.rank = (120, 33)
        idea2.rank = (10, 20)
        
        var user1 = Profile(user: "Rafał Proponent")
        
        user1.addedIdeas?.append(idea1)
        user1.addedIdeas?.append(idea2)
        
        
        println(user1)
        
        nameLabel.text = user1.user
        
        propositionsLabel.text = "\(user1.addedIdeas?.count)"
        
        if let tempIdeas = user1.addedIdeas
        {
            for idea in tempIdeas {
                votesFor += idea.rank.pro
                votesAgainst += idea.rank.con
            }
        }
        
        
        
        
        votesForLabel.text = "\(votesFor)"
        votesAgainstLabel.text = "\(votesAgainst)"
        
        
        
        
        
        
    }
    
}
