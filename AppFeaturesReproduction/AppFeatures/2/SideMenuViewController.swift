//
//  SideMenuViewController.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/02.
//

import UIKit
import SideMenu

class SideMenuViewController: UIViewController {
    
    var sideMenu :SideMenuNavigationController?

    override func viewDidLoad() {
        super.viewDidLoad()

        sideMenu = SideMenuNavigationController(rootViewController: SideMenuListTableViewController())
        sideMenu?.leftSide = true
        sideMenu?.setNavigationBarHidden(true, animated: false)
        
        sideMenu?.sideMenuManager.leftMenuNavigationController = sideMenu
        sideMenu?.sideMenuManager.addPanGestureToPresent(toView: self.view)
    }
    
    @IBAction func didTapSideMenuButton(_ sender: UIBarButtonItem) {
        guard let sideMenu = sideMenu else { return }
        present(sideMenu, animated: true)
    }
    
}
