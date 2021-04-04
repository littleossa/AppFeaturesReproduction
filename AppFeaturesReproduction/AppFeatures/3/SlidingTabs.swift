//
//  SlidingTabs.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/04.
//

import UIKit

struct Tab {
    let color: UIColor
    let title: String
    var isTapped: Bool
}

class SlidingTabs {
    
    let tabs = [
        Tab(color: #colorLiteral(red: 1, green: 0.9099095464, blue: 0, alpha: 1), title: "トップ", isTapped: true),
        Tab(color: .red, title: "レッド", isTapped: false),
        Tab(color: .orange, title: "オレンジ", isTapped: false),
        Tab(color: .green, title: "グリーン", isTapped: false),
        Tab(color: .blue, title: "ブルー", isTapped: false),
        Tab(color: .purple, title: "パープル", isTapped: false),
        Tab(color: .systemPink, title: "ピンク", isTapped: false),
        Tab(color: .brown, title: "ブラウン", isTapped: false)
    ]
}
