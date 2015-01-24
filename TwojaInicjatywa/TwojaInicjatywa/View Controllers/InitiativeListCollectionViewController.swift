//
//  InitiativeListTableTableViewController.swift
//  TwojaInicjatywa
//
//  Created by Maciej Szewczyk on 24.01.2015.
//  Copyright (c) 2015 Cohesiva. All rights reserved.
//

import UIKit

class InitiativeListCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    var initiativeList: [Idea] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initiativeList = sharedIdeas()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
//        let idea1 = Idea(coordinates: CLLocationCoordinate2D(latitude: 45.0, longitude: 23.0), name: "Moja inicjacja")
//        idea1.photo = UIImage(named: "city_placeholder")
//        
//        let idea2 = Idea(coordinates: CLLocationCoordinate2D(latitude: 50.0, longitude: 23.0), name: "Chcę kościół")
//        idea2.photo = UIImage(named: "city_placeholder")
//        
//        self.initiativeList.append(idea1)
//        self.initiativeList.append(idea2)
        
        let cellNib = UINib(nibName: "InitiativeCollectionViewCell", bundle: nil)
        self.collectionView?.registerNib(cellNib, forCellWithReuseIdentifier: "InitiativeCollectionViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.initiativeList.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("InitiativeCollectionViewCell", forIndexPath: indexPath) as InitiativeCollectionViewCell
        
        let initiative = self.initiativeList[indexPath.item]
        
        if let icon = initiative.photo {
            cell.setIcon(icon)
        }
        
        cell.setName(initiative.name)
        cell.setDistance("0.312 km")
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width - 14.0, height: 66.0)
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        println("asda")
    }
}
