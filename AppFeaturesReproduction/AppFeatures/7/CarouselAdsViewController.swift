//
//  CarouselAdsViewController.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/08.
//

import UIKit

class CarouselAdsViewController: UIViewController {
    
    @IBOutlet weak var carouselCollectionView: UICollectionView!
    
    let adsImages = [
        UIImage(named: "blacktissue"),
        UIImage(named: "blueTissue"),
        UIImage(named: "anpanmanTissue"),
        UIImage(named: "blacktissue"),
        UIImage(named: "blueTissue"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        carouselCollectionView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let layout = UICollectionViewFlowLayout()
                layout.scrollDirection = .horizontal
                layout.minimumInteritemSpacing = 0.0
                layout.minimumLineSpacing = 0.0
                layout.itemSize = carouselCollectionView.bounds.size
                carouselCollectionView.collectionViewLayout = layout
        
        carouselCollectionView.scrollToItem(at: IndexPath(item: 1, section: 0), at: .left, animated: false)
    }
}

extension CarouselAdsViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return adsImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = carouselCollectionView.dequeueReusableCell(withReuseIdentifier: "carouselCell", for: indexPath) as! CarouselAdsViewCell
        cell.imageView.image = adsImages[indexPath.row]
        return cell
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let pageFloat = (scrollView.contentOffset.x / scrollView.frame.size.width)
            let pageInt = Int(round(pageFloat))
            
            switch pageInt {
            case 0:
                carouselCollectionView.scrollToItem(at: [0, 3], at: .left, animated: false)
            case adsImages.count - 1:
                carouselCollectionView.scrollToItem(at: [0, 1], at: .left, animated: false)
            default:
                break
            }
        }
}
