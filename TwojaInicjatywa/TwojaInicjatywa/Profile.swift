//
//  Profile.swift
//  TwojaInicjatywa
//
//  Created by Pumpkin K on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

import Foundation


class Profile{

    let user : String
    var addedIdeas : [Idea]?
    var upVotes = (pro : 0 , con : 0)
    
    init( user: String){
    
        self.user = user
    }
}