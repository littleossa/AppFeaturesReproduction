//
//  DataSource.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/03/29.
//

import UIKit

struct AppFeature {
    let index: Int
    let title: String
    let appName: String
    
    var cellTitle: String {
        String(self.index) + ": " + self.title
    }
    
    var cellDetail: String {
        "from " + self.appName
    }
    
    func controller() -> UIViewController {
        let storyboard = UIStoryboard(name: self.title, bundle: nil)
        guard let controller = storyboard.instantiateInitialViewController() else {
            fatalError()
        }
        controller.title = self.title
        return controller
    }
}

struct AppFeaturesDataSource {
    
    let appFeatures = [
        AppFeature(index: 1, title: "SpinningButton", appName: "TikTok"),
        AppFeature(index: 2, title: "SideMenu", appName: "ニトリ"),
        AppFeature(index: 3, title: "SlidingTabBar", appName: "SmartNews"),
        AppFeature(index: 4, title: "AutoSideScrollingText", appName: "トリマ")
    ]
}
