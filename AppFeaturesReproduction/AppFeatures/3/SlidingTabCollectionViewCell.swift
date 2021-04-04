//
//  SlidingTabCollectionViewCell.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/04.
//

import UIKit

class SlidingTabCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
        
    func setCell(by tab: Tab) {
        self.layer.cornerRadius = 10
        self.backgroundColor = tab.color
        self.label.text = tab.title
    }
}
