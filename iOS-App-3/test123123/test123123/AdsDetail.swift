//
//  CollectionViewController.swift
//  test123123
//
//  Created by 李博韬 on 18/06/2017.
//  Copyright © 2017 tonyli. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"



class AdsDetailController: UIViewController {
    
    //    let items = ["tony", "flora","Sibo"]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
        
        income.text = "$" + addDetial.price!
        numleft.text = addDetial.quantity!
        timelen.text = addDetial.timelength!
        
        view.backgroundColor = UIColor.init(red: 20/255, green: 63/255, blue: 65/255, alpha: 1)
        
        view.addSubview(image)
        image.topAnchor.constraint(equalTo: view.topAnchor,constant:40).isActive = true
        image.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 90).isActive = true
        image.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500).isActive = true
        image.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -90).isActive = true
        
        //name of ads company
        view.addSubview(label)
        label.topAnchor.constraint(equalTo: image.bottomAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: image.leftAnchor,constant:40).isActive = true
        label.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant:-470).isActive = true
        label.rightAnchor.constraint(equalTo: image.rightAnchor).isActive = true
        
        //preview of ads
        view.addSubview(banner)
        banner.topAnchor.constraint(equalTo: label.topAnchor,constant:100).isActive = true
        banner.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        banner.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -250).isActive = true
        banner.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        //income per min
        view.addSubview(income)
        income.topAnchor.constraint(equalTo: banner.bottomAnchor,constant:40).isActive = true
        income.leftAnchor.constraint(equalTo: view.leftAnchor,constant:45).isActive = true
        
        //income's little title
        view.addSubview(incometitle)
        incometitle.topAnchor.constraint(equalTo: income.bottomAnchor).isActive = true
        incometitle.leftAnchor.constraint(equalTo: income.leftAnchor,constant:1).isActive = true
        
        //time length
        view.addSubview(timelen)
        timelen.topAnchor.constraint(equalTo: income.topAnchor).isActive = true
        timelen.leftAnchor.constraint(equalTo: income.rightAnchor,constant:70).isActive = true
        
        //time length title
        view.addSubview(timetitle)
        timetitle.topAnchor.constraint(equalTo: income.bottomAnchor).isActive = true
        timetitle.leftAnchor.constraint(equalTo: timelen.leftAnchor,constant:-5).isActive = true
        
        //number of ads left
        view.addSubview(numleft)
        numleft.topAnchor.constraint(equalTo: timelen.topAnchor).isActive = true
        numleft.leftAnchor.constraint(equalTo: timelen.rightAnchor,constant:70).isActive = true
        
        //number left title
        view.addSubview(numtitle)
        numtitle.topAnchor.constraint(equalTo: income.bottomAnchor).isActive = true
        numtitle.leftAnchor.constraint(equalTo: numleft.leftAnchor,constant:5).isActive = true
        
        //deploy ads button
        view.addSubview(btn)
    }
    
    var addDetial = Ads()
    
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
    
    
}























