//
//  Profile.swift
//  TwojaInicjatywa
//
//  Created by Pumpkin K on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

import Foundation


class Profile {
    let fullName: String
    let email:    String
    let password: String
    
    var addedIdeas: [Idea] = []
    
    init(fullName: String, email: String, password: String) {
        self.fullName = fullName
        self.email    = email
        self.password = password
    }
    
    func upVotes() {
        addedIdeas.reduce(0) { $0 + $1.rank.upVotes }
    }
    
    func downVotes() {
        addedIdeas.reduce(0) { $0 + $1.rank.downVotes }
    }
}