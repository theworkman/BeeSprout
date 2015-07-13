//
//  PhotoCell.swift
//  SwiftCollectionView
//
//  Created by Christopher Workman on 7/13/15.
//  Copyright (c) 2015 SeaZar. All rights reserved.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    
    // The collection view cell's objects
    var imageView: UIImageView!
    var caption: UILabel!
    
    // This init function prevent the compiler from complaining
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    // This init function is executed, every time you create an instance of this class
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Configure the the ImageView object and add it to the collection view's contentView container
        imageView = UIImageView(frame: CGRect(x:30, y:12, width:55, height:55))
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        contentView.addSubview(imageView)
        
        // Configure the Label object and add it to the collection view's contentView container
        let textFrame = CGRect(x:5, y:67, width:100, height:35)
        caption = UILabel(frame: textFrame)
        caption.font = UIFont.systemFontOfSize(14.0)
        caption.textAlignment = .Center
        caption.numberOfLines = 2
        caption.lineBreakMode = NSLineBreakMode.ByWordWrapping
        caption.textColor = UIColor.whiteColor()
        caption.backgroundColor = UIColor.blackColor()
        contentView.addSubview(caption)
    }


    
}
