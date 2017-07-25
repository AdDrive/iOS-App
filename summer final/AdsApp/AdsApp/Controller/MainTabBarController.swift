//
//  MainTabBarController.swift
//  AdsApp
//
//  Created by 李博韬 on 30/06/2017.
//  Copyright © 2017 tonyli. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let firstController = UIViewController()
        let navigationController = UINavigationController(rootViewController: firstController)
        navigationController.tabBarItem.image = #imageLiteral(resourceName: "firstTab")
        
        
        
        viewControllers = [navigationController]
        
        // Do any additional setup after loading the view.
    }
    

}
