//
//  DetailController.swift
//  AdsApp
//
//  Created by 李博韬 on 30/06/2017.
//  Copyright © 2017 tonyli. All rights reserved.
//

import UIKit


class AdsDetailController: UIViewController {
    
    var addDetial = Ads()
    
    let whiteView = WhiteView()
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
        
        self.tabBarController?.tabBar.isHidden = true
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.tintColor = .white
        view.backgroundColor = UIColor.init(red: 20/255, green: 63/255, blue: 65/255, alpha: 1)
        
        setupWhiteView()
        
        setupBackgroudColor()
        
        setupDelegate()
        
    }
    
    func setupDelegate() {
        
        whiteView.income.text = "$" + addDetial.price!
        whiteView.numleft.text = addDetial.quantity!
        whiteView.timelen.text = addDetial.timelength!
        whiteView.label.text = addDetial.name!
        whiteView.image.image = addDetial.image!
        
    }
    
    func setupWhiteView() {
        
        view.addSubview(whiteView)
        view.addConstraintsWithFormat(format: "H:|-20-[v0]-20-|", views: whiteView)
        view.addConstraintsWithFormat(format: "V:|-80-[v0]-20-|", views: whiteView)
        whiteView.layer.cornerRadius = 5
        
    }
    
    func setupBackgroudColor() {
        
        let TColor = UIColor.init(red: 36/255, green: 100/255, blue: 88/255, alpha: 1)
        let BColor = UIColor.init(red: 3/255, green: 31/255, blue: 62/255, alpha: 1)
        let gradientColors:[CGColor] = [TColor.cgColor, BColor.cgColor]
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = gradientColors
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
    
    
}

