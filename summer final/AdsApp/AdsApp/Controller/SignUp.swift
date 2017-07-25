//
//  SignUp.swift
//  AdsApp
//
//  Created by 李博韬 on 25/07/2017.
//  Copyright © 2017 tonyli. All rights reserved.
//

import UIKit

class  SignUp: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //background color
        let TColor = UIColor.init(red: 54/255, green: 100/255, blue: 90/255, alpha: 1)
        let BColor = UIColor.init(red: 7/255, green: 32/255, blue: 66/255, alpha: 1)
        
        let gradientColors: [CGColor] = [TColor.cgColor, BColor.cgColor]
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        
        gradientLayer.startPoint = CGPoint(x:0, y:0)
        gradientLayer.endPoint = CGPoint(x:1, y:0)
        gradientLayer.frame = view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
        setupViews()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        emailInput.resignFirstResponder()
        nameInput.resignFirstResponder()
        phoneInput.resignFirstResponder()
        birthdayInput.resignFirstResponder()
        plateInput.resignFirstResponder()
        LEDInput.resignFirstResponder()
        passwordInput.resignFirstResponder()
    }
    
    
    // setup
    func setupViews() {
        setupSignUpView()
        setupSignUpButton()
        setupReturnButton()
    }
    
    
    //setup signup button
    func setupSignUpButton() {
        view.addSubview(signUpButton)
        
        signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signUpButton.topAnchor.constraint(equalTo: signupView.bottomAnchor, constant: 15).isActive = true
        signUpButton.widthAnchor.constraint(equalTo: signupView.widthAnchor).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    let signUpButton: UIButton = {
        let signUpButton = UIButton(type: .system)
        signUpButton.backgroundColor = .green
        signUpButton.setTitle("Sign up", for: .normal)
        signUpButton.tintColor = .white
        signUpButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        signUpButton.layer.cornerRadius = 5
        signUpButton.layer.masksToBounds = true
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        //signUpButton.addTarget(self, action: #selector(handleRegister), for: .touchUpInside)
        return signUpButton
    }()
    
    //setup return button
    func setupReturnButton() {
        view.addSubview(returnButton)
        
        returnButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        returnButton.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: 15).isActive = true
        returnButton.widthAnchor.constraint(equalTo: signupView.widthAnchor).isActive = true
        returnButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    let returnButton: UIButton = {
        let returnButton = UIButton(type: .system)
        returnButton.setTitle("Return to Login", for: .normal)
        returnButton.titleLabel?.tintColor = .white
        returnButton.addTarget(self, action: #selector(handleDismiss), for: .touchUpInside)
        returnButton.translatesAutoresizingMaskIntoConstraints = false
        return returnButton
    }()
    
    
    @objc func handleDismiss(){
        self.dismiss(animated: true, completion: nil)
    }
    
    
    // setup view
    func setupSignUpView() {
        view.addSubview(signupView)
        
        signupView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signupView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50).isActive = true
        signupView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        signupView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        // add subview
        signupView.addSubview(birthdayIcon)
        signupView.addSubview(birthdayInput)
        signupView.addSubview(emailInput)
        signupView.addSubview(emailIcon)
        signupView.addSubview(LEDIcon)
        signupView.addSubview(LEDInput)
        signupView.addSubview(nameIcon)
        signupView.addSubview(nameInput)
        signupView.addSubview(passwordIcon)
        signupView.addSubview(passwordInput)
        signupView.addSubview(phoneIcon)
        signupView.addSubview(phoneInput)
        signupView.addSubview(plateIcon)
        signupView.addSubview(plateInput)
        
        signupView.addSubview(seperator1)
        signupView.addSubview(seperator2)
        signupView.addSubview(seperator3)
        signupView.addSubview(seperator4)
        signupView.addSubview(seperator5)
        signupView.addSubview(seperator6)
        
        
        // horizontal
        signupView.addConstraintsWithFormat(format: "H:|-10-[v0(30)]-12-[v1]|", views: birthdayIcon, birthdayInput)
        signupView.addConstraintsWithFormat(format: "H:|-10-[v0(30)]-10-[v1]|", views: emailIcon, emailInput)
        signupView.addConstraintsWithFormat(format: "H:|-10-[v0(30)]-10-[v1]|", views: LEDIcon, LEDInput)
        signupView.addConstraintsWithFormat(format: "H:|-10-[v0(30)]-12-[v1]|", views: nameIcon, nameInput)
        signupView.addConstraintsWithFormat(format: "H:|-10-[v0(30)]-10-[v1]|", views: passwordIcon, passwordInput)
        signupView.addConstraintsWithFormat(format: "H:|-10-[v0(30)]-12-[v1]|", views: phoneIcon, phoneInput)
        signupView.addConstraintsWithFormat(format: "H:|-10-[v0(30)]-10-[v1]|", views: plateIcon, plateInput)
        signupView.addConstraintsWithFormat(format: "H:|[v0]|", views: seperator1)
        signupView.addConstraintsWithFormat(format: "H:|[v0]|", views: seperator2)
        signupView.addConstraintsWithFormat(format: "H:|[v0]|", views: seperator3)
        signupView.addConstraintsWithFormat(format: "H:|[v0]|", views: seperator4)
        signupView.addConstraintsWithFormat(format: "H:|[v0]|", views: seperator5)
        signupView.addConstraintsWithFormat(format: "H:|[v0]|", views: seperator6)
        
        // vertical
        signupView.addConstraintsWithFormat(format: "V:|-10-[v0(30)]-20-[v1(30)]-20-[v2(30)]-20-[v3(30)]-20-[v4(30)]-20-[v5(30)]-20-[v6(30)]-10-|", views: emailIcon, nameIcon, phoneIcon, birthdayIcon, plateIcon, LEDIcon, passwordIcon)
        signupView.addConstraintsWithFormat(format: "V:|[v0(v1)][v1(v2)][v2(v3)][v3(v4)][v4(v5)][v5(v6)][v6]|", views: emailInput, nameInput, phoneInput, birthdayInput, plateInput, LEDInput, passwordInput)
        signupView.addConstraintsWithFormat(format: "V:|-50-[v0(0.5)]", views: seperator1)
        signupView.addConstraintsWithFormat(format: "V:|-100-[v0(0.5)]", views: seperator2)
        signupView.addConstraintsWithFormat(format: "V:|-150-[v0(0.5)]", views: seperator3)
        signupView.addConstraintsWithFormat(format: "V:|-200-[v0(0.5)]", views: seperator4)
        signupView.addConstraintsWithFormat(format: "V:|-250-[v0(0.5)]", views: seperator5)
        signupView.addConstraintsWithFormat(format: "V:|-300-[v0(0.5)]", views: seperator6)
        
    }
    
    let signupView: UIView = {
        let lv = UIView()
        lv.backgroundColor = .white
        lv.translatesAutoresizingMaskIntoConstraints = false
        lv.layer.cornerRadius = 5
        lv.layer.masksToBounds = true
        return lv
    }()
    
    // birthday
    let birthdayIcon: UIImageView = {
        let birthdayIcon = UIImageView()
        birthdayIcon.image = UIImage(named: "birthday")
        return birthdayIcon
    }()
    
    let birthdayInput: UITextField = {
        let birthdayInput = UITextField()
        birthdayInput.placeholder = "Birthday"
        return birthdayInput
    }()
    
    // email
    let emailIcon: UIImageView = {
        let emailIcon = UIImageView()
        emailIcon.image = UIImage(named: "email")
        return emailIcon
    }()
    
    let emailInput: UITextField = {
        let emailInput = UITextField()
        emailInput.placeholder = "Email"
        emailInput.autocorrectionType = .no
        emailInput.autocapitalizationType = .none
        return emailInput
    }()
    
    // LED
    let LEDIcon: UIImageView = {
        let LEDIcon = UIImageView()
        LEDIcon.image = UIImage(named: "LED")
        return LEDIcon
    }()
    
    let LEDInput: UITextField = {
        let LEDInput = UITextField()
        LEDInput.placeholder = "Bind LED"
        LEDInput.autocorrectionType = .no
        LEDInput.autocapitalizationType = .none
        return LEDInput
    }()
    
    //name
    let nameIcon: UIImageView = {
        let nameIcon = UIImageView()
        nameIcon.image = UIImage(named: "name")
        return nameIcon
    }()
    
    let nameInput: UITextField = {
        let nameInput = UITextField()
        nameInput.placeholder = "Name"
        nameInput.autocorrectionType = .no
        return nameInput
    }()
    
    // password
    let passwordIcon: UIImageView = {
        let passwordIcon = UIImageView()
        passwordIcon.image = UIImage(named: "password")
        return passwordIcon
    }()
    
    let passwordInput: UITextField = {
        let passwordInput = UITextField()
        passwordInput.placeholder = "Password"
        passwordInput.autocorrectionType = .no
        passwordInput.isSecureTextEntry = true
        return passwordInput
    }()
    
    // phone
    let phoneIcon: UIImageView = {
        let phoneIcon = UIImageView()
        phoneIcon.image = UIImage(named: "phone")
        return phoneIcon
    }()
    
    let phoneInput: UITextField = {
        let phoneInput = UITextField()
        phoneInput.placeholder = "Phone"
        phoneInput.autocorrectionType = .no
        return phoneInput
    }()
    
    // plate
    let plateIcon: UIImageView = {
        let plateIcon = UIImageView()
        plateIcon.image = UIImage(named: "plate")
        return plateIcon
    }()
    
    let plateInput: UITextField = {
        let plateInput = UITextField()
        plateInput.placeholder = "Plate"
        plateInput.autocorrectionType = .no
        return plateInput
    }()
    
    // seperator
    let seperator1: UIView = {
        let seperator = UIView()
        seperator.backgroundColor = UIColor.lightGray
        return seperator
    }()
    
    let seperator2: UIView = {
        let seperator = UIView()
        seperator.backgroundColor = UIColor.lightGray
        return seperator
    }()
    
    let seperator3: UIView = {
        let seperator = UIView()
        seperator.backgroundColor = UIColor.lightGray
        return seperator
    }()
    
    let seperator4: UIView = {
        let seperator = UIView()
        seperator.backgroundColor = UIColor.lightGray
        return seperator
    }()
    
    let seperator5: UIView = {
        let seperator = UIView()
        seperator.backgroundColor = UIColor.lightGray
        return seperator
    }()
    
    let seperator6: UIView = {
        let seperator = UIView()
        seperator.backgroundColor = UIColor.lightGray
        return seperator
    }()
    
    
    
    
}
