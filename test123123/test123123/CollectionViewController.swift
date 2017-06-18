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
    
    let items = ["tony", "flora"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = UIColor.white
        
        
        self.collectionView!.register(Cell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        
    }
    
    
    
    // 设置方块大小
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 200)
    }
    
    // 设置个数
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return items.count
    }
    
    // pre-set
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
        cell.backgroundColor = .blue
        return cell
    }

    

}

class Cell: UICollectionViewCell {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        self.addSubview(image)
        image.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        image.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        image.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        image.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 10).isActive = true
    }
    
    
    
    
    
    let image: UIImageView = {
        let im = UIImageView()
        im.image = UIImage.init(named: "2")
        im.contentMode = .scaleAspectFill
        im.clipsToBounds = true
        im.translatesAutoresizingMaskIntoConstraints = false
        return im
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "hi"
        label.backgroundColor = .green
        return label
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






