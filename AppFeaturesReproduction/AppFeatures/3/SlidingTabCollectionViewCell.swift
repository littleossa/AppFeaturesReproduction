//
//  SlidingTabCollectionViewCell.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/04.
//

import UIKit

class SlidingTabCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var selectedTabView: UIView!
    @IBOutlet weak var tabView: UIView!
    @IBOutlet weak var label: UILabel!
        
    func setCell(by tab: Tab) {
        self.tabView.layer.cornerRadius = 10
        self.selectedTabView.layer.cornerRadius = 10
        self.selectedTabView.isHidden = !tab.isTapped
        self.tabView.backgroundColor = tab.color
        self.selectedTabView.backgroundColor = tab.color
        self.label.text = tab.title
    }
}
