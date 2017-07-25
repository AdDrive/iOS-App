//
//  ViewController.swift
//  AdsApp
//
//  Created by 李博韬 on 30/06/2017.
//  Copyright © 2017 tonyli. All rights reserved.
//

import UIKit

class BidAdHomeController: UIViewController, UIScrollViewDelegate, UITableViewDelegate {
    
    private var tableCellId = "tableCellId"
    
    var whiteView: UIView?
    
    var scrollView: HomeScrollView!
    
    var tableView: UITableView!
    
    var customSearchController = UISearchController()
    
    var ADDS = [Ads]()
    var filterADDS:[Ads] = [Ads]()
    {
        didSet { self.tableView.reloadData() }
    }
    
    var shouldShowSearchResult = false
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.isHidden = false
        scrollView.isHidden = true
        customSC.selectedSegmentIndex = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.tableView.reloadData()
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
        
        setupSegmentedController()
        
        setupScrollView()
        
        setupBackgroudColor()
        
        exampleAdds()
        
        setupTableView()
        
    }
    
    
    
    func setupTableView() {
        
        //创建表视图
        let tableViewFrame = CGRect(x: 0, y: 20 + 40 + 40, width: self.view.frame.width,
                                    height: self.view.frame.height-60)
        self.tableView = UITableView(frame: tableViewFrame, style:.plain)
        self.tableView.separatorStyle = .none
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        
        //创建一个重用的单元格
        self.tableView!.register(TableViewCell.self,
                                 forCellReuseIdentifier: tableCellId)
        self.view.addSubview(self.tableView!)
        
        //配置搜索控制器
        self.customSearchController = ({
            let controller = UISearchController(searchResultsController: nil)
            controller.searchResultsUpdater = self //两个样例使用不同的代理
            controller.hidesNavigationBarDuringPresentation = false
            controller.dimsBackgroundDuringPresentation = false
            controller.searchBar.searchBarStyle = .minimal
            controller.searchBar.backgroundColor = .white
            controller.searchBar.sizeToFit()
            controller.searchBar.placeholder = "Search Company Here"
            self.tableView.tableHeaderView = controller.searchBar
            return controller
        })()
    }
    
    func exampleAdds() {
        // This is a example to create a model
        // this will be a type of Ads
        // Fill in the informations that we need
        let uber = Ads()
        uber.image = UIImage(named: "uberLogo")
        uber.name = "UBER"
        uber.price = "0.01"
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
        
        let uber2 = Ads()
        uber2.image = UIImage(named: "uberLogo")
        uber2.name = "UBER"
        uber2.price = "12"
        uber2.quantity = "90"
        uber2.timelength = "2"
        ADDS.append(uber2)
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
    
    func setupScrollView() {
        
        let height = (self.navigationController?.navigationBar.frame.height)! + 20 + self.customSC.frame.height
        let frame = CGRect(x: view.bounds.minX, y: view.bounds.minY + height + 10, width: view.bounds.width, height: view.bounds.height)
        scrollView = HomeScrollView(frame: frame)
        scrollView.contentSize = CGSize(width: view.frame.width, height: 1200)
        view.addSubview(scrollView)
        
    }
    
    func setupSegmentedController() {
        
        view.addSubview(customSC)
        let height = (self.navigationController?.navigationBar.bounds.height)! + 20
        customSC.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customSC.topAnchor.constraint(equalTo: view.topAnchor, constant: height).isActive = true
        customSC.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        customSC.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
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
        
        self.customSearchController.isActive = false
        
        switch sender.selectedSegmentIndex {
        case 1:
            tableView.isHidden = true
            scrollView.isHidden = false
            tableView.reloadData()
        default:
            
            tableView.isHidden = false
            scrollView.isHidden = true
            //customSearchController.searchBar.isHidden = false
        }
    }
    
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        customSearchController.searchBar.resignFirstResponder()
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    

}

extension BidAdHomeController: UITableViewDataSource
{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.customSearchController.isActive {
            return self.filterADDS.count
        } else {
            return self.ADDS.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: tableCellId,
                                                     for: indexPath) as! TableViewCell
            //cell.backgroundColor = .red
            if self.customSearchController.isActive {
                cell.Ads = self.filterADDS[indexPath.row]
                return cell
            } else {
                cell.Ads = self.ADDS[indexPath.row]
                return cell
            }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailAds = AdsDetailController()
        if customSearchController.isActive {
            detailAds.addDetial = filterADDS[indexPath.item]
        } else {
            detailAds.addDetial = ADDS[indexPath.item]
        }
        self.customSearchController.isActive = false
        self.navigationController?.pushViewController(detailAds, animated: true)
    }
}
extension BidAdHomeController: UISearchResultsUpdating
{
    //实时进行搜索
    func updateSearchResults(for searchController: UISearchController) {
        
        if self.customSearchController.isActive {
            self.customSC.isEnabled = false
        } else {
            self.customSC.isEnabled = true
        }
        
        self.filterADDS = self.ADDS.filter { (school) -> Bool in
            if customSearchController.searchBar.text == "" {
                return true
            }
            return school.name!.contains(searchController.searchBar.text!.uppercased())
        }
    }
    
}

