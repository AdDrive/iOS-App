//
//  HomeCell.swift
//  test123123
//
//  Created by 李博韬 on 30/06/2017.
//  Copyright © 2017 tonyli. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
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
