//
//  LoginPage.swift
//  AdsApp
//
//  Created by 李博韬 on 25/07/2017.
//  Copyright © 2017 tonyli. All rights reserved.
//

import UIKit

class LoginPage: UIViewController {
    
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
        passwordInput.resignFirstResponder()
    }
    
    func setupViews() {
        
        setupLoginView()
        setupLoginButton()
        setupFacebookLoginButton()
        setupSignUp()
        
    }
    
    let back: UIButton = {
        let back = UIButton()
        back.backgroundColor = .red
        back.addTarget(self, action: #selector(backToHome), for: .touchUpInside)
        return back
    }()
    
    @objc func backToHome() {
        dismiss(animated: true, completion: nil)
    }
    
    func setupSignUp() {
        view.addSubview(signUp)
        
        signUp.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signUp.topAnchor.constraint(equalTo: facebookLoginButton.bottomAnchor, constant: 20).isActive = true
        signUp.widthAnchor.constraint(equalTo: loginView.widthAnchor).isActive = true
        signUp.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    let signUp: UIButton = {
        let signUp = UIButton(type: .system)
        signUp.setTitle("New here? Sign Up", for: .normal)
        signUp.titleLabel?.tintColor = .white
        signUp.addTarget(self, action: #selector(signUpLancher), for: .touchUpInside)
        signUp.translatesAutoresizingMaskIntoConstraints = false
        return signUp
    }()
    
    @objc func signUpLancher() {
        //let navigation = UINavigationController(rootViewController: ViewController())
        let signup = SignUp()
        present(signup, animated: true, completion: nil)
        //self.navigationController?.pushViewController(signup, animated: true)
        
    }
    
    func setupFacebookLoginButton() {
        view.addSubview(facebookLoginButton)
        
        facebookLoginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        facebookLoginButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 115).isActive = true
        facebookLoginButton.widthAnchor.constraint(equalTo: loginButton.widthAnchor).isActive = true
        facebookLoginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    let facebookLoginButton: UIButton = {
        let facebookLoginButton = UIButton(type: .system)
        facebookLoginButton.backgroundColor = UIColor.init(red: 59/255, green: 89/255, blue: 152/255, alpha: 1)
        facebookLoginButton.setTitle("  Sign in with Facebook", for: .normal)
        
        
        var image = UIImage(named: "facebook")
        facebookLoginButton.setImage(image, for: .normal)
        facebookLoginButton.imageView?.tintColor = .white
        facebookLoginButton.imageView?.contentMode = .scaleAspectFit
        
        facebookLoginButton.tintColor = .white
        facebookLoginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        facebookLoginButton.layer.cornerRadius = 5
        facebookLoginButton.layer.masksToBounds = true
        facebookLoginButton.translatesAutoresizingMaskIntoConstraints = false
        
        facebookLoginButton.addTarget(self, action: #selector(handlerFacebookSignIn), for: .touchUpInside)
        return facebookLoginButton
    }()
    
    @objc func handlerFacebookSignIn() {
        
    }
    
    
    
    func setupLoginButton() {
        view.addSubview(loginButton)
        
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: loginView.bottomAnchor, constant: 15).isActive = true
        loginButton.widthAnchor.constraint(equalTo: loginView.widthAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    let loginButton: UIButton = {
        let loginButton = UIButton(type: .system)
        loginButton.backgroundColor = .green
        loginButton.setTitle("Sign in", for: .normal)
        loginButton.tintColor = .white
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        loginButton.layer.cornerRadius = 5
        loginButton.layer.masksToBounds = true
        loginButton.addTarget(self, action: #selector(handleSignin), for: .touchUpInside)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        return loginButton
    }()
    
    @objc func handleSignin() {
        self.dismiss(animated: true, completion: nil)
    }
    //
    //        guard let email = emailInput.text, let password = passwordInput.text else{
    //            print("form is not valid")
    //            return
    //        }
    //
    //        FIRAuth.auth()?.signIn(withEmail: email, password: password, completion: { (user, error) in
    //            if error != nil {
    //                print(error!)
    //                return
    //            }
    //
    //            self.dismiss(animated: true, completion: nil)
    //        })
    //    }
    
    
    
    func setupLoginView() {
        view.addSubview(loginView)
        
        loginView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50).isActive = true
        loginView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        loginView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        loginView.addSubview(emailInput)
        loginView.addSubview(emailIcon)
        loginView.addSubview(passwordInput)
        loginView.addSubview(passwordIcon)
        loginView.addSubview(seperator)
        
        // horizontal
        loginView.addConstraintsWithFormat(format: "H:|-10-[v0(30)]-10-[v1]|", views: emailIcon, emailInput)
        loginView.addConstraintsWithFormat(format: "H:|-10-[v0(30)]-10-[v1]|", views: passwordIcon, passwordInput)
        loginView.addConstraintsWithFormat(format: "H:|[v0]|", views: seperator)
        
        // vertical
        loginView.addConstraintsWithFormat(format: "V:|-10-[v0(30)]-10-[v1(30)]-10-|", views: emailIcon, passwordIcon)
        loginView.addConstraintsWithFormat(format: "V:|[v0(v1)][v1]|", views: emailInput, passwordInput)
        loginView.addConstraintsWithFormat(format: "V:|-45-[v0(0.5)]", views: seperator)
        
    }
    
    let loginView: UIView = {
        let lv = UIView()
        lv.backgroundColor = .white
        lv.translatesAutoresizingMaskIntoConstraints = false
        lv.layer.cornerRadius = 5
        lv.layer.masksToBounds = true
        return lv
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
        return emailInput
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
        passwordInput.isSecureTextEntry = true
        return passwordInput
    }()
    
    // seperator
    let seperator: UIView = {
        let seperator = UIView()
        seperator.backgroundColor = UIColor.lightGray
        return seperator
    }()
    
    
    
}
