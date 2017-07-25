//
//  HomeScrollView.swift
//  AdsApp
//
//  Created by 李博韬 on 14/07/2017.
//  Copyright © 2017 tonyli. All rights reserved.
//

import UIKit

class HomeScrollView: UIScrollView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.white
        
        setupViews()
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        yourCompanyNameTextField.resignFirstResponder()
        ad_content.resignFirstResponder()
        company_web.resignFirstResponder()
        money.resignFirstResponder()
        time.resignFirstResponder()
        amount.resignFirstResponder()
    }
    
    func setupViews() {
        
        addSubview(yourCompanyNameTextField)
        yourCompanyNameTextField.topAnchor.constraint(equalTo: self.topAnchor, constant:50).isActive = true
        yourCompanyNameTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant:85).isActive = true
        yourCompanyNameTextField.widthAnchor.constraint(equalToConstant: self.frame.width - 85*2).isActive = true
        yourCompanyNameTextField.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        addSubview(upload_image)
        upload_image.topAnchor.constraint(equalTo: yourCompanyNameTextField.bottomAnchor, constant: 15).isActive = true
        upload_image.leftAnchor.constraint(equalTo:self.leftAnchor, constant:85).isActive = true
        upload_image.widthAnchor.constraint(equalToConstant: self.frame.width - 85*2).isActive = true
        upload_image.heightAnchor.constraint(equalToConstant: 130).isActive = true
        
        addSubview(ad_content)
        ad_content.topAnchor.constraint(equalTo: upload_image.bottomAnchor, constant: 15).isActive = true
        ad_content.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        ad_content.widthAnchor.constraint(equalToConstant: self.frame.width - 20*2).isActive = true
        ad_content.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        addSubview(company_web)
        company_web.topAnchor.constraint(equalTo: ad_content.bottomAnchor, constant: 15).isActive = true
        company_web.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        company_web.widthAnchor.constraint(equalToConstant: self.frame.width - 20*2).isActive = true
        company_web.heightAnchor.constraint(equalToConstant: 50).isActive = true
        company_web.leftView = link
        company_web.leftViewMode = UITextFieldViewMode.always
        
        addSubview(money)
        money.topAnchor.constraint(equalTo: company_web.bottomAnchor, constant: 15).isActive = true
        money.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        money.widthAnchor.constraint(equalToConstant: self.frame.width - 20*2).isActive = true
        money.heightAnchor.constraint(equalToConstant: 50).isActive = true
        money.leftView = price
        money.leftViewMode = UITextFieldViewMode.always
        money.rightView = unit
        money.rightViewMode = UITextFieldViewMode.always
        
        addSubview(time)
        time.topAnchor.constraint(equalTo: money.bottomAnchor, constant: 15).isActive = true
        time.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        time.widthAnchor.constraint(equalToConstant: self.frame.width - 20*2).isActive = true
        time.heightAnchor.constraint(equalToConstant: 50).isActive = true
        time.leftView = time_length
        time.leftViewMode = UITextFieldViewMode.always
        time.rightView = unit_1
        time.rightViewMode = UITextFieldViewMode.always
        
        addSubview(amount)
        amount.topAnchor.constraint(equalTo: time.bottomAnchor, constant: 15).isActive = true
        amount.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        amount.widthAnchor.constraint(equalToConstant: self.frame.width - 20*2).isActive = true
        amount.heightAnchor.constraint(equalToConstant: 50).isActive = true
        amount.leftView = quantity
        amount.leftViewMode = UITextFieldViewMode.always
        amount.rightView = unit_2
        amount.rightViewMode = UITextFieldViewMode.always
        
        addSubview(cost)
        cost.topAnchor.constraint(equalTo: amount.bottomAnchor, constant: 30).isActive = true
        cost.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 100).isActive = true
        cost.widthAnchor.constraint(equalToConstant: self.frame.width - 100*2).isActive = true
        cost.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        addSubview(text_1)
        text_1.topAnchor.constraint(equalTo: cost.bottomAnchor, constant: 3).isActive = true
        text_1.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 100).isActive = true
        text_1.widthAnchor.constraint(equalToConstant: self.frame.width - 100*2).isActive = true
        text_1.heightAnchor.constraint(equalToConstant: 10).isActive = true
        
        addSubview(send)
        send.topAnchor.constraint(equalTo: cost.bottomAnchor, constant: 25).isActive = true
        send.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 130).isActive = true
        send.widthAnchor.constraint(equalToConstant: self.frame.width - 130*2).isActive = true
        send.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    let yourCompanyNameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Your Company Name"
        tf.backgroundColor = .white
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        //tf.layer.cornerRadius = 8.0
        tf.layer.masksToBounds = true
        tf.layer.borderColor = UIColor( red: 197/255, green: 197/255, blue:197/255, alpha: 1.0 ).cgColor
        tf.layer.borderWidth = 1.0
        return tf
    }()
    
    let upload_image: UIView = {
        let uv = UILabel()
        uv.text = "Upload your image here"
        uv.backgroundColor = .white
        uv.textAlignment = .center
        uv.translatesAutoresizingMaskIntoConstraints = false
        //uv.layer.cornerRadius = 8.0
        uv.layer.masksToBounds = true
        uv.layer.borderColor = UIColor( red: 197/255, green: 197/255, blue:197/255, alpha: 1.0 ).cgColor
        uv.layer.borderWidth = 1.0
        return uv
    }()
    
    let ad_content: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter your AD content here"
        tf.backgroundColor = .white
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        //tf.layer.cornerRadius = 8.0
        tf.layer.masksToBounds = true
        tf.layer.borderColor = UIColor( red: 197/255, green: 197/255, blue:197/255, alpha: 1.0 ).cgColor
        tf.layer.borderWidth = 1.0
        return tf
    }()
    
    let link: UIView = {
        let tf = UILabel()
        tf.text = "   Link"
        tf.backgroundColor = .white
        //tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        //tf.layer.cornerRadius = 8.0
        //tf.layer.masksToBounds = true
        //tf.layer.borderColor = UIColor( red: 197/255, green: 197/255, blue:197/255, alpha: 1.0 ).cgColor
        //tf.layer.borderWidth = 2.0
        return tf
    }()
    
    let price: UIView = {
        let tf = UILabel()
        tf.text = "   Price"
        tf.backgroundColor = .white
        //tf.textAlignment = .left
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let time_length: UIView = {
        let tf = UILabel()
        tf.text = "   Time length"
        tf.backgroundColor = .white
        //tf.textAlignment = .left
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let quantity: UIView = {
        let tf = UILabel()
        tf.text = "   Quantity"
        tf.backgroundColor = .white
        //tf.textAlignment = .left
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let unit: UIView = {
        let tf = UILabel()
        tf.text = " / min   "
        tf.backgroundColor = .white
        //tf.textAlignment = .left
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let unit_1: UIView = {
        let tf = UILabel()
        tf.text = "  hour   "
        tf.backgroundColor = .white
        //tf.textAlignment = .left
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let unit_2: UIView = {
        let tf = UILabel()
        tf.text = "  ad   "
        tf.backgroundColor = .white
        //tf.textAlignment = .left
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let unit_3: UIView = {
        let tf = UILabel()
        tf.text = "$  "
        tf.backgroundColor = .white
        //tf.textAlignment = .left
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let cost: UIView = {
        let tf = UILabel()
        tf.text = "$ 140.00 "
        tf.font = tf.font.withSize(30)
        tf.textColor = .red
        tf.backgroundColor = .white
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let text_1: UIView = {
        let tf = UILabel()
        tf.text = "  Estimated Cost"
        tf.font = tf.font.withSize(10)
        //tf.textColor = .red
        tf.backgroundColor = .white
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let send: UIView = {
        let tf = UILabel()
        tf.text = "Send"
        //tf.font = tf.font.withSize(10)
        tf.textColor = .white
        tf.layer.backgroundColor = UIColor( red: 16/255, green: 51/255, blue:98/255, alpha: 1.0 ).cgColor
        tf.textAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let company_web: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter your company's website here"
        tf.backgroundColor = .white
        tf.textAlignment = .center
        tf.layer.masksToBounds = true
        tf.layer.borderColor = UIColor( red: 197/255, green: 197/255, blue:197/255, alpha: 1.0 ).cgColor
        tf.layer.borderWidth = 1.0
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let money: UITextField = {
        let tf = UITextField()
        tf.placeholder = "$0.01"
        tf.backgroundColor = .white
        tf.textAlignment = .right
        tf.layer.masksToBounds = true
        tf.layer.borderColor = UIColor( red: 197/255, green: 197/255, blue:197/255, alpha: 1.0 ).cgColor
        tf.layer.borderWidth = 1.0
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let time: UITextField = {
        let tf = UITextField()
        tf.placeholder = "2"
        tf.backgroundColor = .white
        tf.textAlignment = .right
        tf.layer.masksToBounds = true
        tf.layer.borderColor = UIColor( red: 197/255, green: 197/255, blue:197/255, alpha: 1.0 ).cgColor
        tf.layer.borderWidth = 1.0
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let amount: UITextField = {
        let tf = UITextField()
        tf.placeholder = "100"
        tf.backgroundColor = .white
        tf.textAlignment = .right
        tf.layer.masksToBounds = true
        tf.layer.borderColor = UIColor( red: 197/255, green: 197/255, blue:197/255, alpha: 1.0 ).cgColor
        tf.layer.borderWidth = 1.0
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    
    let inputText: UITextField = {
        let it = UITextField()
        it.placeholder = "input"
        it.backgroundColor = .red
        it.textAlignment = .center
        it.translatesAutoresizingMaskIntoConstraints = false
        return it
    }()
    
    
    let inputText2: UITextField = {
        let it = UITextField()
        it.placeholder = "input"
        it.backgroundColor = .red
        it.textAlignment = .center
        it.translatesAutoresizingMaskIntoConstraints = false
        return it
    }()
    
    let background: UIView = {
        let tf = UILabel()
        //tf.text = "  Link"
        tf.backgroundColor = .white
        tf.textAlignment = .left
        tf.translatesAutoresizingMaskIntoConstraints = false
        //tf.layer.cornerRadius = 8.0
        tf.layer.masksToBounds = true
        tf.layer.borderColor = UIColor( red: 197/255, green: 197/255, blue:197/255, alpha: 1.0 ).cgColor
        tf.layer.borderWidth = 1.0
        return tf
    }()
    
    
}
