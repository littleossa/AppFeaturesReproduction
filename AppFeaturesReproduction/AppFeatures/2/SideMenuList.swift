//
//  SideMenuList.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/02.
//

import UIKit

struct Item {
    
    let imageName: String
    var image: UIImage {
        UIImage(systemName: self.imageName)!
    }
    
    let titel: String
}

class SideMenuList {
    
    let items = [
        Item(imageName: "square.and.arrow.up", titel: "シェア"),
        Item(imageName: "star", titel: "評価"),
        Item(imageName: "envelope", titel: "ご意見・ご要望"),
        Item(imageName: "yensign.circle", titel: "寄付"),
        Item(imageName: "giftcard", titel: "ギフトを贈る"),
        Item(imageName: "questionmark.circle", titel: "よくある質問"),
        Item(imageName: "person.fill.questionmark", titel: "開発者について"),
        Item(imageName: "mappin.and.ellipse", titel: "現在地"),
        Item(imageName: "candybarphone", titel: "電話番号"),
    ]
}
