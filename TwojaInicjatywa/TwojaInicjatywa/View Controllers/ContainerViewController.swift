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

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.title = "Mapa"
        
        self._addChangeViewContentView()
        self._addProfileBarButtonItem()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tabBar.removeFromSuperview()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    private func _addProfileBarButtonItem() {
        self.navigationItem.leftBarButtonItem  = UIBarButtonItem(image:UIImage(named: "profile_icon"), style: UIBarButtonItemStyle.Plain, target: self, action:  Selector("_didTapShowProfile:"))
    }
    
    func _didTapShowProfile(sender: UIBarButtonItem) {
        self.performSegueWithIdentifier(ContainerToProfileSegueIdentifier, sender: sender)
    }
    
    private func _addChangeViewContentView() {
        self.navigationItem.rightBarButtonItem  = UIBarButtonItem(image:UIImage(named: "list_icon"), style: UIBarButtonItemStyle.Plain, target: self, action:  Selector("_didTapChangeButton:"))
    }
    
    func _didTapChangeButton(sender: UIBarButtonItem) {
        self.changeViewController()
    }
    
    override var selectedIndex: Int {
        didSet {
            if self.selectedIndex == 0 {
                self.navigationItem.rightBarButtonItem?.image = UIImage(named: "list_icon")
                self.title = "Mapa"
            } else {
                self.navigationItem.rightBarButtonItem?.image = UIImage(named: "map_icon")
                self.title = "Inicjatywy"
            }
        }
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

