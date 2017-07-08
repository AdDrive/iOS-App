//
//  BidAdCollectionView.swift
//  AdsApp
//
//  Created by 李博韬 on 30/06/2017.
//  Copyright © 2017 tonyli. All rights reserved.
//

import UIKit

class  CustomSearchController: UISearchController {
    
    init(searchResultsController: UIViewController!, searchBarFrame: CGRect, searchBarFont: UIFont, searchBarTextColor: UIColor, searchBarTintColor: UIColor) {
        super.init(searchResultsController: searchResultsController)
        
        configureSearchBar(frame: searchBar, font: searchBarFrame, textColor: searchBarTextColor, bgColor: searchBarTintColor)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func configureSearchBar(frame: CGRect, font: UIFont, textColor: UIColor, bgColor: UIColor) {
        customSearchBar = CustomSearchBar(frame: frame, font: font , textColor: textColor)
        
        customSearchBar.barTintColor = bgColor
        customSearchBar.tintColor = textColor
        customSearchBar.showsBookmarkButton = false
        customSearchBar.showsCancelButton = true
    }
}
