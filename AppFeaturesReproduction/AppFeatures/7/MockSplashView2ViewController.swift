//
//  MockSplashView2ViewController.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/08.
//

import UIKit

class MockSplashView2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        performSegue(withIdentifier: "CarouselAds", sender: nil)
    }
}
