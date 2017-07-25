//
//  MeController.swift
//  AdsApp
//
//  Created by 李博韬 on 25/07/2017.
//  Copyright © 2017 tonyli. All rights reserved.
//

import UIKit

class MeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        self.view.addSubview(button)
        view.addConstraintsWithFormat(format: "H:|-20-[v0(50)]", views: button)
        view.addConstraintsWithFormat(format: "V:|-100-[v0(50)]", views: button)
        
    }
    
    @objc func handleStatus() {
        self.present(LoginPage(), animated: true, completion: nil)
    }
    
    let button: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = UIColor.init(red: 4/255, green: 52/255, blue: 100/255, alpha: 1)
        btn.setTitle("Login", for: .normal)
        btn.addTarget(self, action: #selector(handleStatus), for: .touchUpInside)
        btn.tintColor = .white
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 5
        return btn
    }()
}
