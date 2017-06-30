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
        
        collectionView.register(Cell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! Cell
        
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

class Cell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //LOGO
        self.addSubview(image)
        self.addConstraintsWithFormat(format: "V:|-8-[v0]-8-|", views: image)
        self.addConstraintsWithFormat(format: "H:|-8-[v0(59)]", views: image)
        
        //NAME
        self.addSubview(name)
        self.addConstraintsWithFormat(format: "V:|-20-[v0]-20-|", views: name)
        self.addConstraintsWithFormat(format: "H:|-80-[v0(70)]", views: name)
        
        //WHITE BLOCK
        self.addSubview(block)
        self.addConstraintsWithFormat(format: "V:|-0-[v0]-0-|", views: block)
        self.addConstraintsWithFormat(format: "H:|-150-[v0]-0-|", views: block)
        
        //PRICE
        self.addSubview(price)
        self.addConstraintsWithFormat(format: "V:|-20-[v0]", views: price)
        self.addConstraintsWithFormat(format: "H:[v0]-77-|", views: price)
        
        //SEAT
        self.addSubview(seat)
        self.addConstraintsWithFormat(format: "V:|-20-[v0]", views: seat)
        self.addConstraintsWithFormat(format: "H:[v0]-24-|", views: seat)
        
        //per min
        self.addSubview(pm)
        self.addConstraintsWithFormat(format: "V:|-42-[v0]", views: pm)
        self.addConstraintsWithFormat(format: "H:[v0]-78-|", views: pm)
        
        //left
        self.addSubview(left)
        self.addConstraintsWithFormat(format: "V:|-42-[v0]", views: left)
        self.addConstraintsWithFormat(format: "H:[v0]-25-|", views: left)
    }
    
    
    //LOGO
    let image: UIImageView = {
        let im = UIImageView()
        im.layer.cornerRadius = 8
        im.image = UIImage.init(named: "uberLogo")
        im.contentMode = .scaleAspectFill
        im.clipsToBounds = true
        im.translatesAutoresizingMaskIntoConstraints = false
        return im
    }()
    
    //NAME
    var name: UILabel = {
        let n = UILabel()
        n.text = "UBER"
        n.font = UIFont.boldSystemFont(ofSize: 10)
        n.textColor = UIColor.init(red: 161/255, green: 161/255, blue: 161/255, alpha: 1)
        n.translatesAutoresizingMaskIntoConstraints = false
        return n
    }()
    
    //WHITE BLOCK
    let block: UIView = {
        let bl = UIView()
        bl.layer.cornerRadius = 4
        bl.backgroundColor = .white
        bl.layer.borderColor = UIColor.init(red: 196/255, green: 206/255, blue: 216/255, alpha: 1).cgColor
        bl.layer.borderWidth = 0.7
        bl.translatesAutoresizingMaskIntoConstraints = false
        return bl
    }()
    
    //PRICE
    let price: UILabel = {
        let p = UILabel()
        p.text = "$0.04"
        p.font = UIFont.systemFont(ofSize: 18.5)
        p.textColor = UIColor.red
        p.translatesAutoresizingMaskIntoConstraints = false
        return p
    }()
    
    //SEAT
    let seat: UILabel = {
        let s = UILabel()
        s.text = "92"
        s.font = UIFont.systemFont(ofSize: 18.5)
        s.textColor = UIColor.init(red: 15/255, green: 51/255, blue: 98/255, alpha: 1)
        s.translatesAutoresizingMaskIntoConstraints = false
        return s
    }()
    
    //per min
    let pm: UILabel = {
        let pm = UILabel()
        pm.text = "per min"
        pm.font = UIFont.systemFont(ofSize: 13)
        pm.textColor = UIColor.init(red: 174/255, green: 174/255, blue: 174/255, alpha: 1)
        pm.translatesAutoresizingMaskIntoConstraints = false
        return pm
    }()
    
    //left
    let left: UILabel = {
        let left = UILabel()
        left.text = "left"
        left.font = UIFont.systemFont(ofSize: 13)
        left.textColor = UIColor.init(red: 174/255, green: 174/255, blue: 174/255, alpha: 1)
        left.translatesAutoresizingMaskIntoConstraints = false
        return left
    }()
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
extension UIView {
    func addConstraintsWithFormat(format: String, views: UIView...) {
        
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}


