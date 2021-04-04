//
//  SlidingTabBarViewController.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/03.
//

import UIKit

class SlidingTabBarViewController: UIViewController {
    
    @IBOutlet weak var slidingTabCollectionView: UICollectionView!
    @IBOutlet weak var cellBottomColorView: UIView!
    @IBOutlet weak var nosebleedImage: UIImageView!

    var slidingTabs = SlidingTabs().tabs
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        slidingTabCollectionView.dataSource = self
        slidingTabCollectionView.delegate = self
                        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 80, height: 60)
        layout.minimumLineSpacing = 0
        layout.scrollDirection = .horizontal
        slidingTabCollectionView.collectionViewLayout = layout
    }
}

extension SlidingTabBarViewController: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slidingTabs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = slidingTabCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SlidingTabCollectionViewCell
        cell.setCell(by: slidingTabs[indexPath.row])
        return cell
    }
}

extension SlidingTabBarViewController: UICollectionViewDelegate {
        
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let color = slidingTabs[indexPath.row].color
        cellBottomColorView.backgroundColor = color
        nosebleedImage.backgroundColor = color
        slidingTabCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
                
        for i in 0...slidingTabs.count - 1 {
            slidingTabs[i].isTapped = false
        }
        slidingTabs[indexPath.row].isTapped = true
        slidingTabCollectionView.reloadData()
    }
}
