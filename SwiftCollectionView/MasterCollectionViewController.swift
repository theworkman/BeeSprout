//
//  MasterCollectionViewController.swift
//  SwiftCollectionView
//
//  Created by Christopher Workman on 7/13/15.
//  Copyright (c) 2015 SeaZar. All rights reserved.
//

import UIKit

let reuseIdentifier = "Cell"

class MasterCollectionViewController: UICollectionViewController {
    
    // Collection view dataSource objects
    var icon: PhotoCell!
    var imageFileNames = [String]()


    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        // self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        self.collectionView!.backgroundColor = UIColor(patternImage: UIImage(named: "soil")!)
        
        // Register the class with the collection view
        self.collectionView!.registerClass(PhotoCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        // Add objects in the collection view dataSource, imageFileNames Array
        self.loadImages()

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        //#warning Incomplete method implementation -- Return the number of sections
        return 0
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //#warning Incomplete method implementation -- Return the number of items in the section
        return 0
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! UICollectionViewCell
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */
    
    
    // Get images from the app bundle and put them in the cv dataSource object
    func loadImages() {
        // Get reference to the app's main bundle
        var mainBundle: NSBundle = NSBundle.mainBundle()
        
        // Fetch all jpg image files from the main bundle
        var results:NSArray = mainBundle.pathsForResourcesOfType("jpg",inDirectory:nil)
        
        // Convert NSArray to Swift Array
        var dirPaths: Array = results as AnyObject as [String]
        
        for path in dirPaths {
            // Convert the String values stored in path to an array
            var objectArray = path.componentsSeparatedByString("/")
            
            // Remove last the object from the objectArray and put it the imageFileNames variable
            imageFileNames.append(objectArray.removeLast())
        }
        /**************** DEBUG CODE ************/
        println(imageFileNames)
        println(imageFileNames.count)
        /****************************************/
    }

    
    
}
