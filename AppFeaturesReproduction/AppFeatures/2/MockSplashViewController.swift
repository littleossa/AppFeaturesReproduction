//
//  MockSplashViewController.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/02.
//

import UIKit

class MockSplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        performSegue(withIdentifier: "SideMenu", sender: nil)
    }
}
