//
//  SpinningButtonViewController.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/01.
//

import UIKit

class SpinningButtonViewController: UIViewController {
    
    @IBOutlet weak var spinningButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        spinningButton.layer.cornerRadius = 50
        spinningButton.clipsToBounds = true
        
        // configure rotationAnimation
        let rotationAnimation = CABasicAnimation(keyPath:"transform.rotation.z")
        rotationAnimation.toValue = CGFloat(Double.pi / 180) * 360
        rotationAnimation.duration = 1.0
        
        // greatestFiniteMagnitude will cause the animation to repeat forever.
        rotationAnimation.repeatCount = .greatestFiniteMagnitude
        
        spinningButton.layer.add(rotationAnimation, forKey: "rotationAnimation")
    }
    
    @IBAction func didTapSpinningButton(_ sender: UIButton) {
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    
    // MARK: - If you want to configure UI without the storyboard
    
    /*
     func configureSpinnigButton(){
     let Button = UIButton()
     let Image = UIImage(named:"nosebleed")!
     
     // configure Button UI
     Button.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
     Button.layer.cornerRadius = 50
     Button.clipsToBounds = true
     Button.layer.position = self.view.center
     Button.setImage(Image, for: .normal)
     Button.addTarget(self, action: #selector(segueIntoNext), for: .touchUpInside)
     view.addSubview(Button)
     
     // configure rotationAnimation
     let rotationAnimation = CABasicAnimation(keyPath:"transform.rotation.z")
     rotationAnimation.toValue = CGFloat(Double.pi / 180) * 360
     rotationAnimation.duration = 1.0
     
     //  greatestFiniteMagnitude will cause the animation to repeat forever.
     rotationAnimation.repeatCount = .greatestFiniteMagnitude
     
     Button.layer.add(rotationAnimation, forKey: "rotationAnimation")
     }
     
     // didTapButton function
     @objc func segueIntoNext() {
     performSegue(withIdentifier: "next", sender: nil)
     }
     */
}
