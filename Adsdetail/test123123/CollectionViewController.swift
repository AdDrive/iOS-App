//
//  CollectionViewController.swift
//  test123123
//
//  Created by 李博韬 on 18/06/2017.
//  Copyright © 2017 tonyli. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
//    let items = ["tony", "flora","Sibo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = UIColor.init(red: 20/255, green: 63/255, blue: 65/255, alpha: 1)
        
        
        self.collectionView!.register(Cell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        
    }
    
    
    
    // 设置方块大小
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width*0.9, height: view.frame.height*0.95)
    }
    
    // 设置个数
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }
    
    // pre-set
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
        cell.backgroundColor = UIColor.init(red: 250/255, green: 246/255, blue: 242/55, alpha: 1)
        return cell
    }

    

}

class Cell: UICollectionViewCell {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //具体规格想要规范成倍数
        //logo of ads
        self.addSubview(image)
        image.topAnchor.constraint(equalTo: self.topAnchor,constant:40).isActive = true
        image.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 90).isActive = true
        image.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -500).isActive = true
        image.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -90).isActive = true
        
        //name of ads company
        self.addSubview(label)
        label.topAnchor.constraint(equalTo: image.bottomAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: image.leftAnchor,constant:40).isActive = true
        label.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant:-470).isActive = true
        label.rightAnchor.constraint(equalTo: image.rightAnchor).isActive = true
        
        //preview of ads
        self.addSubview(banner)
        banner.topAnchor.constraint(equalTo: label.topAnchor,constant:100).isActive = true
        banner.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        banner.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -250).isActive = true
        banner.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
        //income per min
        self.addSubview(income)
        income.topAnchor.constraint(equalTo: banner.bottomAnchor,constant:40).isActive = true
        income.leftAnchor.constraint(equalTo: self.leftAnchor,constant:45).isActive = true
        
        //income's little title
        self.addSubview(incometitle)
        incometitle.topAnchor.constraint(equalTo: income.bottomAnchor).isActive = true
        incometitle.leftAnchor.constraint(equalTo: income.leftAnchor,constant:1).isActive = true
        
        //time length
        self.addSubview(timelen)
        timelen.topAnchor.constraint(equalTo: income.topAnchor).isActive = true
        timelen.leftAnchor.constraint(equalTo: income.rightAnchor,constant:70).isActive = true
        
        //time length title
        self.addSubview(timetitle)
        timetitle.topAnchor.constraint(equalTo: income.bottomAnchor).isActive = true
        timetitle.leftAnchor.constraint(equalTo: timelen.leftAnchor,constant:-5).isActive = true
        
        //number of ads left
        self.addSubview(numleft)
        numleft.topAnchor.constraint(equalTo: timelen.topAnchor).isActive = true
        numleft.leftAnchor.constraint(equalTo: timelen.rightAnchor,constant:70).isActive = true
        
        //number left title
        self.addSubview(numtitle)
        numtitle.topAnchor.constraint(equalTo: income.bottomAnchor).isActive = true
        numtitle.leftAnchor.constraint(equalTo: numleft.leftAnchor,constant:5).isActive = true
        
        //deploy ads button
        self.addSubview(btn)
        
    }
    
    
    
    
    
    let image: UIImageView = {
        let im = UIImageView()
        im.image = UIImage.init(named: "pirate")
        im.contentMode = .scaleAspectFill
        im.clipsToBounds = true
        im.translatesAutoresizingMaskIntoConstraints = false
        im.layer.cornerRadius = 5
        return im
    }()
    
    let banner: UIImageView = {
        let img = UIImageView()
        img.image = UIImage.init(named: "slogan")
        img.clipsToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "pirate.io"
        label.contentMode = .scaleAspectFill
        label.font = UIFont(name: "Avenir-Light", size: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let income: UILabel = {
        let label = UILabel()
        label.text = "$0.1"
        label.contentMode = .scaleAspectFill
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.red
        label.font = UIFont(name: "Avenir-Light", size: 30)
        return label
    }()
    
    let incometitle: UILabel = {
        let label = UILabel()
        label.text = "per min"
        label.contentMode = .scaleAspectFill
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.gray
        label.font = UIFont(name: "Avenir-Light", size: 15)
        return label
    }()
    
    let timelen: UILabel = {
        let label = UILabel()
        label.text = "2"
        label.contentMode = .scaleAspectFill
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.init(red: 3/255, green: 31/255, blue: 71/255, alpha: 1)
        label.font = UIFont(name: "Avenir-Light", size: 30)
        return label
    }()
    
    let timetitle: UILabel = {
        let label = UILabel()
        label.text = "hour"
        label.contentMode = .scaleAspectFill
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.gray
        label.font = UIFont(name: "Avenir-Light", size: 15)
        return label
    }()
    
    let numleft: UILabel = {
        let label = UILabel()
        label.text = "92"
        label.contentMode = .scaleAspectFill
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.init(red: 3/255, green: 31/255, blue: 71/255, alpha: 1)
        label.font = UIFont(name: "Avenir-Light", size: 30)
        return label
    }()
    
    let numtitle: UILabel = {
        let label = UILabel()
        label.text = "left"
        label.contentMode = .scaleAspectFill
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.gray
        label.font = UIFont(name: "Avenir-Light", size: 15)
        return label
    }()
    
    let btn: UIButton = {
        let btn = UIButton(frame: CGRect(x:70 , y: 520, width: 200, height: 50))
        btn.backgroundColor = UIColor.init(red: 3/255, green: 36/255, blue: 83/255, alpha: 1)
        btn.setTitle("Deploy Ads", for: .normal)
//        btn.addTarget(self, action: #selector(buttonAction), forControlEvents: .touchUpInside)
        btn.tag = 1
        return btn
    }()
    
    
    
    
    
    let redView: UIView = {
        let rv = UIView()
        rv.backgroundColor = .red
        return rv
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






