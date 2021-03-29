//
//  RootViewController.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/03/29.
//

import UIKit

class RootViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let appFeaturesDataSource = AppFeaturesDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = true
    }
}

// MARK: - UI TableView Delegate and UITableViewDataSource

extension RootViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        appFeaturesDataSource.appFeatures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let appFeature = appFeaturesDataSource.appFeatures[indexPath.row]
        cell.textLabel?.text = appFeature.cellTitle
        cell.detailTextLabel?.text = appFeature.cellDetail
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let appFeature = appFeaturesDataSource.appFeatures[indexPath.row]
        navigationController?.pushViewController(appFeature.controller(), animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
