//
//  AppDelegate.swift
//  TwojaInicjatywa
//
//  Created by Maciej Szewczyk on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        GMSServices.provideAPIKey("AIzaSyAL6VuHmbdDGXpqvBypW3cu5dmxnqDdYX4");
        
        FBLoginView.self
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: NSString?, annotation: AnyObject) -> Bool {
        var wasHandled:Bool = FBAppCall.handleOpenURL(url, sourceApplication: sourceApplication)
        
        return wasHandled
    }
}

func sharedIdeas() -> [Idea]



{
    var idea1 = Idea(coordinates: CLLocationCoordinate2DMake(51.1220568429801, 17.0339102902900), name: "zbudować kościół")
    var idea2 = Idea(coordinates: CLLocationCoordinate2DMake(51.1220568429222, 17.0339902903400), name: "postawić burdel")
    var idea3 = Idea(coordinates: CLLocationCoordinate2DMake(51.121583, 17.034822), name: "budka z hot-dogami")
    var idea4 = Idea(coordinates: CLLocationCoordinate2DMake(51.121671, 17.037484), name: "kosz na śmieci")
    var idea5 = Idea(coordinates: CLLocationCoordinate2DMake(51.120021, 17.035349), name: "fryzjer")
    var idea6 = Idea(coordinates: CLLocationCoordinate2DMake(51.121671, 17.032356), name: "zagospodarowanie starej fabryki")
    
    return [idea1, idea2, idea3, idea4, idea5, idea6]
}

