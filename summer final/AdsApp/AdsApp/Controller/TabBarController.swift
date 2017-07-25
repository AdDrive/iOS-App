//
//  TabBarController.swift
//  AdsApp
//
//  Created by 李博韬 on 12/07/2017.
//  Copyright © 2017 tonyli. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navigation = UINavigationController(rootViewController: BidAdHomeController())
        navigation.tabBarItem.image = UIImage(named: "firstTab")
        
        let navigation2 = UINavigationController(rootViewController: MeController())
        
        self.tabBar.tintColor = .black
        
        viewControllers = [navigation, navigation2]
        
    }
    
}
