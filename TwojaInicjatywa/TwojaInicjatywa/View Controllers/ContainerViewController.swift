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
        
        self._addChangeViewContentView()
        self._addProfileBarButtonItem()
    }
    
    private func _addProfileBarButtonItem() {
        
    }
    
    private func _addChangeViewContentView() {
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Done, target: self, action: Selector("_didTapChangeButton:"))
        
        self.navigationItem.rightBarButtonItem  = UIBarButtonItem(image: UIImage(named: "map_icon"), style: UIBarButtonItemStyle.Plain, target: self, action:  Selector("_didTapChangeButton:"))
    }
    
    func _didTapChangeButton(sender: UIBarButtonItem) {
        self.changeViewController()
    }
    
    func changeViewController() {
        if self.selectedIndex == 0 {
            self.selectedIndex = 1
        } else {
            self.selectedIndex = 0
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

