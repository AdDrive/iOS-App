//
//  AdsDetail.swift
//  AdsApp
//
//  Created by 李博韬 on 14/07/2017.
//  Copyright © 2017 tonyli. All rights reserved.
//

import UIKit

class WhiteView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.init(red: 251/255, green: 248/255, blue: 240/255, alpha: 1)
        
        setupViews()
        
    }
    
    func setupViews() {
        addSubview(image)
        image.topAnchor.constraint(equalTo: self.topAnchor,constant: -40).isActive = true
        image.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        image.heightAnchor.constraint(equalToConstant: 150).isActive = true
        image.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        //name of ads company
        addSubview(label)
        label.topAnchor.constraint(equalTo: image.bottomAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: image.leftAnchor).isActive = true
        label.heightAnchor.constraint(equalToConstant: 75).isActive = true
        label.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        //preview of ads
        addSubview(banner)
        banner.topAnchor.constraint(equalTo: label.topAnchor,constant:100).isActive = true
        banner.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        banner.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -250).isActive = true
        banner.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
        //income per min
        addSubview(income)
        income.topAnchor.constraint(equalTo: banner.bottomAnchor,constant:40).isActive = true
        income.leftAnchor.constraint(equalTo: self.leftAnchor,constant:45).isActive = true
        
        //income's little title
        addSubview(incometitle)
        incometitle.topAnchor.constraint(equalTo: income.bottomAnchor).isActive = true
        incometitle.leftAnchor.constraint(equalTo: income.leftAnchor,constant:1).isActive = true
        
        //time length
        addSubview(timelen)
        timelen.topAnchor.constraint(equalTo: income.topAnchor).isActive = true
        timelen.leftAnchor.constraint(equalTo: income.rightAnchor,constant:70).isActive = true
        
        //time length title
        addSubview(timetitle)
        timetitle.topAnchor.constraint(equalTo: income.bottomAnchor).isActive = true
        timetitle.leftAnchor.constraint(equalTo: timelen.leftAnchor,constant:-5).isActive = true
        
        //number of ads left
        addSubview(numleft)
        numleft.topAnchor.constraint(equalTo: timelen.topAnchor).isActive = true
        numleft.leftAnchor.constraint(equalTo: timelen.rightAnchor,constant:70).isActive = true
        
        //number left title
        addSubview(numtitle)
        numtitle.topAnchor.constraint(equalTo: income.bottomAnchor).isActive = true
        numtitle.leftAnchor.constraint(equalTo: numleft.leftAnchor,constant:5).isActive = true
        
        //deploy ads button
        addSubview(btn)
        btn.topAnchor.constraint(equalTo: numtitle.bottomAnchor, constant: 10).isActive = true
        btn.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        btn.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
    
    let banner: UILabel = {
        let label = UILabel()
        label.backgroundColor = .white
        label.textAlignment = .center
        label.text = "Drive with Uber, earn money on your schedule, Join us!"
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "pirate.io"
        label.contentMode = .scaleAspectFill
        label.font = UIFont.boldSystemFont(ofSize: 20)
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
        label.textAlignment = .center
        label.contentMode = .scaleAspectFill
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.gray
        label.font = UIFont(name: "Avenir-Light", size: 15)
        return label
    }()
    
    let btn: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = UIColor.init(red: 4/255, green: 52/255, blue: 100/255, alpha: 1)
        btn.setTitle("Deploy Ads", for: .normal)
        //        btn.addTarget(self, action: #selector(buttonAction), forControlEvents: .touchUpInside)
        btn.tag = 1
        btn.tintColor = .white
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 5
        return btn
    }()
}



