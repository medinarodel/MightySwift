//
//  HomeController.swift
//  MightySwift
//
//  Created by Rodel Medina on 4/8/15.
//  Copyright (c) 2015 Rodel Medina. All rights reserved.
//

import UIKit

class HomeController: TemplateController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    var collectionView: UICollectionView?
    var items: [String] = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.itemSize = CGSizeMake(Constants.Sizes.homeThumb, Constants.Sizes.homeThumb)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0

        collectionView = UICollectionView(frame: CGRectMake(0, 0, Constants.Sizes.windowWidth, Constants.Sizes.contentHeight), collectionViewLayout: layout)
        collectionView!.dataSource = self
        collectionView!.delegate = self
        collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView!.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(collectionView!)

    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! UICollectionViewCell

        var bgImage = UIImageView(image: UIImage(named: "sample/" + items[indexPath.row]))
        bgImage.frame = CGRectMake(0,0,Constants.Sizes.homeThumb,Constants.Sizes.homeThumb)
        cell.addSubview(bgImage)
        cell.backgroundColor = Constants.Colors.colorThemeOrange;
        return cell
    }
    
}