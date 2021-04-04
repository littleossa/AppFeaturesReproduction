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
}

class SlidingTabs {
    
    let tabs = [
        Tab(color: #colorLiteral(red: 1, green: 0.9099095464, blue: 0, alpha: 1), title: "トップ"),
        Tab(color: .red, title: "レッド"),
        Tab(color: .orange, title: "オレンジ"),
        Tab(color: .green, title: "グリーン"),
        Tab(color: .blue, title: "ブルー"),
        Tab(color: .purple, title: "パープル"),
        Tab(color: .systemPink, title: "ピンク"),
        Tab(color: .brown, title: "ブラウン")
    ]
}
