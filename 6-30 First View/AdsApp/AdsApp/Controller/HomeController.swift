//
//  ViewController.swift
//  AdsApp
//
//  Created by 李博韬 on 30/06/2017.
//  Copyright © 2017 tonyli. All rights reserved.
//

import UIKit

class BidAdHomeController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate, UIScrollViewDelegate {
    
    private let reuseIdentifier = "Cell"
    
    var scrollView: UIScrollView!
    
    var dataArray = [String]()
    var filteredArray = [String]()
    var shouldShowSearchResults = false
    
    var ADDS = [Ads]()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.isHidden = false
        scrollView.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSegmentedController()
        
        setupCollectionView()
        
        setupScrollView()
        
        // This is a example to create a model
        // this will be a type of Ads
        // Fill in the informations that we need
        let uber = Ads()
        uber.image = UIImage(named: "uberLogo")
        uber.name = "UBER"
        uber.price = "12"
        uber.quantity = "90"
        uber.timelength = "2"
        ADDS.append(uber)
        
        let adidas = Ads()
        adidas.image = UIImage(named: "uberLogo")
        adidas.name = "ADIDAS"
        adidas.price = "13"
        adidas.quantity = "100"
        adidas.timelength = "3"
        ADDS.append(adidas)
        
        
        
    }
    
    func setupScrollView() {
        
        let frame = CGRect(x: view.bounds.minX, y: view.bounds.minY + 120, width: view.bounds.width, height: view.bounds.height)
        scrollView = UIScrollView(frame: frame)
        
        scrollView.backgroundColor = UIColor.white
        
        scrollView.contentSize = CGSize(width: view.frame.width, height: 1200)
        
        view.addSubview(scrollView)
        
        
        scrollView.addSubview(yourCompanyNameTextField)
        yourCompanyNameTextField.topAnchor.constraint(equalTo: scrollView.topAnchor, constant:50).isActive = true
        yourCompanyNameTextField.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant:85).isActive = true
        yourCompanyNameTextField.widthAnchor.constraint(equalToConstant: scrollView.frame.width - 85*2).isActive = true
        yourCompanyNameTextField.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        scrollView.addSubview(upload_image)
        upload_image.topAnchor.constraint(equalTo: yourCompanyNameTextField.bottomAnchor, constant: 15).isActive = true
        upload_image.leftAnchor.constraint(equalTo:scrollView.leftAnchor, constant:85).isActive = true
        upload_image.widthAnchor.constraint(equalToConstant: scrollView.frame.width - 85*2).isActive = true
        upload_image.heightAnchor.constraint(equalToConstant: 130).isActive = true
        
        scrollView.addSubview(ad_content)
        ad_content.topAnchor.constraint(equalTo: upload_image.bottomAnchor, constant: 15).isActive = true
        ad_content.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 20).isActive = true
        ad_content.widthAnchor.constraint(equalToConstant: scrollView.frame.width - 20*2).isActive = true
        ad_content.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        scrollView.addSubview(company_web)
        company_web.topAnchor.constraint(equalTo: ad_content.bottomAnchor, constant: 15).isActive = true
        company_web.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 20).isActive = true
        company_web.widthAnchor.constraint(equalToConstant: scrollView.frame.width - 20*2).isActive = true
        company_web.heightAnchor.constraint(equalToConstant: 50).isActive = true
        company_web.leftView = link
        company_web.leftViewMode = UITextFieldViewMode.always
        
        scrollView.addSubview(money)
        money.topAnchor.constraint(equalTo: company_web.bottomAnchor, constant: 15).isActive = true
        money.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 20).isActive = true
        money.widthAnchor.constraint(equalToConstant: scrollView.frame.width - 20*2).isActive = true
        money.heightAnchor.constraint(equalToConstant: 50).isActive = true
        money.leftView = price
        money.leftViewMode = UITextFieldViewMode.always
        money.rightView = unit
        money.rightViewMode = UITextFieldViewMode.always
        
        scrollView.addSubview(time)
        time.topAnchor.constraint(equalTo: money.bottomAnchor, constant: 15).isActive = true
        time.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 20).isActive = true
        time.widthAnchor.constraint(equalToConstant: scrollView.frame.width - 20*2).isActive = true
        time.heightAnchor.constraint(equalToConstant: 50).isActive = true
        time.leftView = time_length
        time.leftViewMode = UITextFieldViewMode.always
        time.rightView = unit_1
        time.rightViewMode = UITextFieldViewMode.always
        
        scrollView.addSubview(amount)
        amount.topAnchor.constraint(equalTo: time.bottomAnchor, constant: 15).isActive = true
        amount.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 20).isActive = true
        amount.widthAnchor.constraint(equalToConstant: scrollView.frame.width - 20*2).isActive = true
        amount.heightAnchor.constraint(equalToConstant: 50).isActive = true
        amount.leftView = quantity
        amount.leftViewMode = UITextFieldViewMode.always
        amount.rightView = unit_2
        amount.rightViewMode = UITextFieldViewMode.always
        
        scrollView.addSubview(cost)
        cost.topAnchor.constraint(equalTo: amount.bottomAnchor, constant: 30).isActive = true
        cost.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 100).isActive = true
        cost.widthAnchor.constraint(equalToConstant: scrollView.frame.width - 100*2).isActive = true
        cost.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        scrollView.addSubview(text_1)
        text_1.topAnchor.constraint(equalTo: cost.bottomAnchor, constant: 3).isActive = true
        text_1.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 100).isActive = true
        text_1.widthAnchor.constraint(equalToConstant: scrollView.frame.width - 100*2).isActive = true
        text_1.heightAnchor.constraint(equalToConstant: 10).isActive = true
        
        scrollView.addSubview(send)
        send.topAnchor.constraint(equalTo: cost.bottomAnchor, constant: 25).isActive = true
        send.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 130).isActive = true
        send.widthAnchor.constraint(equalToConstant: scrollView.frame.width - 130*2).isActive = true
        send.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupSegmentedController() {
        
        view.addSubview(customSC)
        let height = (self.navigationController?.navigationBar.frame.height)! * 2 - 20
        customSC.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customSC.topAnchor.constraint(equalTo: view.topAnchor, constant: height).isActive = true
        customSC.widthAnchor.constraint(equalToConstant: 300).isActive = true
        customSC.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    
    func setupCollectionView() {
        
        collectionView.register(HomeCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        view.addSubview(collectionView)
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: collectionView)
        view.addConstraintsWithFormat(format: "V:|-200-[v0]|", views: collectionView)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.alwaysBounceVertical = true
    }
    
    
    let customSC: UISegmentedControl = {
        let sc = UISegmentedControl(items: ["Bid ad", "Send ad"])
        sc.tintColor = UIColor.white
        sc.translatesAutoresizingMaskIntoConstraints = false
        sc.selectedSegmentIndex = 0
        sc.addTarget(self, action: #selector(switchPage), for: .valueChanged)
        return sc
    }()
    
    @objc func switchPage(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 1:
            collectionView.isHidden = true
            scrollView.isHidden = false
        default:
            collectionView.isHidden = false
            scrollView.isHidden = true
        }
    }
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        cv.backgroundColor = .white
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    
    // 设置方块大小
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w = view.frame.width
        return CGSize(width: 0.8*w, height: 75)
    }
    
    // 设置个数
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return ADDS.count
    }
    
    // pre-set
    internal func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! HomeCell
        
        cell.name.text = ADDS[indexPath.item].name
        cell.image.image = ADDS[indexPath.item].image
        cell.price.text = "$" + ADDS[indexPath.item].price!
        cell.seat.text = ADDS[indexPath.item].quantity
        
        
        // Configure the cell
        cell.backgroundColor = UIColor.init(red: 250/255, green: 248/255, blue: 245/255, alpha: 1)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let adController = AdsDetailController()
        adController.addDetial = ADDS[indexPath.item]
        
        print(123)
        
        navigationController?.pushViewController(adController, animated: true)
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
