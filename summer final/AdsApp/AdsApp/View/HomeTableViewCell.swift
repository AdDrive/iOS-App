//
//  TableViewCell.swift
//  AdsApp
//
//  Created by 李博韬 on 16/07/2017.
//  Copyright © 2017 tonyli. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var Ads: Ads? {
        didSet {
            if let image = Ads?.image {
                image2.image = image
            }
            if let adsName = Ads?.name {
                name.text = adsName
            }
            if let adsPrice = Ads?.price {
                price.text = "$" + adsPrice
            }
            if let adsSeat = Ads?.quantity {
                seat.text = adsSeat
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupViews() {
        
        self.addSubview(subview)
        self.addConstraintsWithFormat(format: "H:|-50-[v0]-50-|", views: subview)
        self.addConstraintsWithFormat(format: "V:|-5-[v0(80)]", views: subview)
        
        //LOGO
        subview.addSubview(image2)
        subview.addConstraintsWithFormat(format: "V:|-8-[v0]-8-|", views: image2)
        subview.addConstraintsWithFormat(format: "H:|-8-[v0(64)]", views: image2)
        
        //NAME
        subview.addSubview(name)
        subview.addConstraintsWithFormat(format: "V:|-20-[v0]-20-|", views: name)
        subview.addConstraintsWithFormat(format: "H:|-80-[v0(70)]", views: name)
        
        //WHITE BLOCK
        subview.addSubview(block)
        subview.addConstraintsWithFormat(format: "V:|-0-[v0]-0-|", views: block)
        subview.addConstraintsWithFormat(format: "H:|-150-[v0]-0-|", views: block)
        
        //PRICE SEAT PM AND LEFT
        block.addSubview(price)
        block.addSubview(seat)
        block.addSubview(pm)
        block.addSubview(left)
        block.addConstraintsWithFormat(format: "H:|-5-[v0(v1)][v1]-5-|", views: price, seat)
        block.addConstraintsWithFormat(format: "H:|-5-[v0(v1)][v1]-5-|", views: pm, left)
        block.addConstraintsWithFormat(format: "V:|-20-[v0(v1)][v1]-20-|", views: price, pm)
        block.addConstraintsWithFormat(format: "V:|-20-[v0(v1)][v1]-20-|", views: seat, left)
        
        
    }
    
    let subview: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.init(red: 251/255, green: 248/255, blue: 245/255, alpha: 1)
        return view
    }()
    
    //LOGO
    let image2: UIImageView = {
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
        n.font = UIFont.boldSystemFont(ofSize: 15)
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
        
        p.textAlignment = .center
        
        return p
    }()
    
    //SEAT
    let seat: UILabel = {
        let s = UILabel()
        s.text = "92"
        s.font = UIFont.systemFont(ofSize: 18.5)
        s.textColor = UIColor.init(red: 15/255, green: 51/255, blue: 98/255, alpha: 1)
        s.translatesAutoresizingMaskIntoConstraints = false
        
        s.textAlignment = .center
        
        return s
    }()
    
    //per min
    let pm: UILabel = {
        let pm = UILabel()
        pm.text = "per min"
        pm.font = UIFont.systemFont(ofSize: 13)
        pm.textColor = UIColor.init(red: 174/255, green: 174/255, blue: 174/255, alpha: 1)
        pm.translatesAutoresizingMaskIntoConstraints = false
        
        pm.textAlignment = .center
        
        return pm
    }()
    
    //left
    let left: UILabel = {
        let left = UILabel()
        left.text = "left"
        left.font = UIFont.systemFont(ofSize: 13)
        left.textColor = UIColor.init(red: 174/255, green: 174/255, blue: 174/255, alpha: 1)
        left.translatesAutoresizingMaskIntoConstraints = false
        
        left.textAlignment = .center
        
        return left
    }()
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        setupViews()

        // Configure the view for the selected state
    }

}
