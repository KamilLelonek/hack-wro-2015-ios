//
//  SignInViewController.swift
//  TwojaInicjatywa
//
//  Created by afilipowicz on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

import Foundation
import UIKit

class SignInViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signinButtonTouched(sender: AnyObject) {
        var userProfile = Profile(fullName: "username", email: emailTextField.text as String, password: passwordTextField.text)
        
        var window = self.view.window
        var vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as UIViewController
        window!.rootViewController = vc
    }
}

