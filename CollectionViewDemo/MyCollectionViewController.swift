//
//  MyCollectionViewController.swift
//  CollectionViewDemo
//
//  Created by Peter Pan on 3/18/16.
//  Copyright © 2016 Peter Pan. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MyCollectionViewController: UICollectionViewController {
    
    var poemArray = ["死生契闊，與子成說。執子之手，與子偕老。", "兩情若是久長時，又豈在朝朝暮暮。", "相見爭如不見，有情何似無情。", "天不老，情難絕。心似雙絲網，中有千千結。", "身無綵鳳雙飛翼，心有靈犀一點通。", "情是何物", "十年生死兩茫茫，不思量，自難忘，千里孤墳，無處話淒涼。", "春蠶到死絲方盡，蠟炬成灰淚始乾。", "君生我未生，我生君已老。", "佇倚危樓風細細，望極春愁，黯黯生天際。草色煙光殘照里，無言誰會憑欄意。擬把疏狂圖一醉，對酒當歌，強樂還無味。衣帶漸寬終不悔，為伊消得人憔悴。"]


    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        
        let imageView = UIImageView(image: UIImage(named: "dog"))
        imageView.contentMode = .ScaleAspectFill
        imageView.clipsToBounds = true
        self.collectionView?.backgroundView = imageView        
        
        let flowLayout = self.collectionViewLayout as! UICollectionViewFlowLayout
        flowLayout.estimatedItemSize = CGSize(width: 100, height: 100)
        
        
        
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
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return poemArray.count
    }
    
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! MyCollectionViewCell
    
        // Configure the cell
        cell.quoteLabel.text = poemArray[indexPath.item]

    
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

}
