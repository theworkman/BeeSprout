//
//  DetailViewController.swift
//  SwiftCollectionView
//
//  Created by Christopher Workman on 7/13/15.
//  Copyright (c) 2015 SeaZar. All rights reserved.
//

import UIKit



class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    
    var selectedPhotoName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize this view controller's views
        imageView.image = UIImage(named: selectedPhotoName)
        
        // Convert the selectedPhoto string object to an Array
        var stringArray: Array = selectedPhotoName.componentsSeparatedByString(".")
        
        // Get the last element of the stringArray object and assign it to the captionLabel control
        captionLabel.text = stringArray[0]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
