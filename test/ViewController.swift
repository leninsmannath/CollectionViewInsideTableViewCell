//
//  ViewController.swift
//  test
//
//  Created by Lenin S on 23/03/18.
//  Copyright © 2018 Lworld. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource {
  
    
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 4
    }
   
    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let   homeCell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! tableCell
        homeCell.collectionView.delegate = self
        homeCell.collectionView.dataSource = self
        //homeCell.collectionView.register(UINib(nibName: "HomeCollectionCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        return homeCell
        
    }
    
   
    
    // MARK: - CollectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! collectionCell
     
        return cell
    }
    
}
class collectionCell : UICollectionViewCell
{
  
}
class tableCell: UITableViewCell {
    
   @IBOutlet weak var collectionView: UICollectionView!
}
