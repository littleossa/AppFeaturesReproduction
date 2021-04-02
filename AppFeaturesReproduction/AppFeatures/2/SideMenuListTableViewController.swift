//
//  SideMenuListTableViewController.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/02.
//

import UIKit

class SideMenuListTableViewController: UITableViewController {
    
    let sideMenuList = SideMenuList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.tableFooterView = UIView()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sideMenuList.items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = sideMenuList.items[indexPath.row].titel
        cell.textLabel?.textColor = .darkGray
        cell.imageView?.image = sideMenuList.items[indexPath.row].image
        cell.imageView?.tintColor = .black
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
        // do something when cell is tapped.
    }
}
