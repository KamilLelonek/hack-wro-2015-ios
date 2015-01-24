//
//  SignUpViewController.swift
//  TwojaInicjatywa
//
//  Created by afilipowicz on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

import Foundation
import UIKit

class SignUpViewController: UIViewController, FBLoginViewDelegate {
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var facebookLoginButton: FBLoginView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.facebookLoginButton.delegate = self
        self.facebookLoginButton.readPermissions = ["public_profile", "email"]
    }
    
    func loginViewShowingLoggedInUser(loginView : FBLoginView!) {
    }
    
    func loginViewFetchedUserInfo(loginView : FBLoginView!, user: FBGraphUser) {
//        var userProfile = Profile(fullName: user.username == "" ? "username" : user.username, email: "email", password: "passwd")
        /*user.objectForKey("email") as String*/
        
        var window = self.view.window
        var vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as UIViewController
        window!.rootViewController = vc
    }
    
    func loginViewShowingLoggedOutUser(loginView : FBLoginView!) {
    }
    
    func loginView(loginView : FBLoginView!, handleError:NSError) {
    }
    
    @IBAction func signupButtonPressed(sender: AnyObject) {
        var userProfile = Profile(fullName: usernameTextField.text, email: emailTextField.text as String, password: passwordTextField.text)
        
        var window = self.view.window
        var vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as UIViewController
        window!.rootViewController = vc
    }
}

