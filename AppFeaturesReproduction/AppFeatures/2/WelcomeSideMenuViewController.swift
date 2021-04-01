//
//  WelcomeSideMenuViewController.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/02.
//

import UIKit

class WelcomeSideMenuViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.performSegue(withIdentifier: "SideMenu", sender: nil)
        }
    }
}
