//
//  BidAdHomeController.swift
//  test123123
//
//  Created by Xinyue Zhang on 6/23/17.
//  Copyright © 2017 tonyli. All rights reserved.
//

import UIKit

class BidAdHomeController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
    
    private let reuseIdentifier = "Cell"
    
    var ADDS = [Ads]()      // This is the array to save all the information for all the ADS
                            // The number of cell on the page will depend by the number of element in this array
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
        
        // This is a example to create a model
        // this will be a type of Ads
        // Fill in the informations that we need
        var uber = Ads()
        
        uber.image = UIImage(named: "uberLogo")
        uber.name = "UBER"
        uber.price = "12"
        uber.quantity = "90"
        uber.timelength = "2"
        
        let adidas = Ads()
        adidas.image = UIImage(named: "uberLogo")
        adidas.name = "ADIDAS"
        adidas.price = "13"
        adidas.quantity = "100"
        adidas.timelength = "3"
        
        
        
        ADDS.append(uber)           // Append the model into the ADDS array
        ADDS.append(adidas)
        
    }
    
    
    
    
    func setupCollectionView() {
        
        collectionView.register(HomeCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        view.addSubview(collectionView)
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: collectionView)
        view.addConstraintsWithFormat(format: "V:|-200-[v0]|", views: collectionView)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        cv.backgroundColor = .white
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    
    // 设置方块大小
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w = view.frame.width
        return CGSize(width: 0.8*w, height: 75)
    }
    
    // 设置个数
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return ADDS.count
    }
    
    // pre-set
    internal func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! HomeCell
        
        cell.name.text = ADDS[indexPath.item].name
        cell.image.image = ADDS[indexPath.item].image
        cell.price.text = "$" + ADDS[indexPath.item].price!
        cell.seat.text = ADDS[indexPath.item].quantity
        
        
        // Configure the cell
        cell.backgroundColor = UIColor.init(red: 250/255, green: 248/255, blue: 245/255, alpha: 1)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let adController = AdsDetailController()
        adController.addDetial = ADDS[indexPath.item]
        
        navigationController?.pushViewController(adController, animated: true)
    }
    
    
}




