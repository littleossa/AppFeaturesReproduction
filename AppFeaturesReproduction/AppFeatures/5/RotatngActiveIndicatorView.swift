//
//  RotatngActiveIndicator.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/06.
//

import UIKit

class RotatngActiveIndicatorView: UIView {
    
    let circle1 = UIImageView(frame: CGRect(x: 20, y: 20, width: 90, height: 90))
    let circle2 = UIImageView(frame: CGRect(x: 120, y: 20, width: 90, height: 90))
    
    var isAnimated = false
    
    let position: [CGRect] = [
        CGRect(x: 30, y: 20, width: 90, height: 90),
        CGRect(x: 60, y: 15, width: 110, height: 110),
        CGRect(x: 110, y: 20, width: 90, height: 90),
        CGRect(x: 60, y: 25, width: 50, height: 50)
    ]
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI() {
        //
        translatesAutoresizingMaskIntoConstraints = false
        
        circle1.image = UIImage(named: "nosebleedClear")
        circle1.backgroundColor = #colorLiteral(red: 1, green: 0.9099095464, blue: 0, alpha: 1).withAlphaComponent(0.9)
        circle1.layer.cornerRadius = circle1.frame.width / 2
        
        //
        circle1.layer.zPosition = 2
        
        circle2.image = UIImage(named: "nosebleedClear")
        circle2.backgroundColor = #colorLiteral(red: 0.7714337707, green: 0.8092812896, blue: 1, alpha: 1).withAlphaComponent(0.9)
        circle2.layer.cornerRadius = circle2.frame.width / 2
        
        //
        circle2.layer.zPosition = 1
        
        addSubview(circle1)
        addSubview(circle2)
    }
    
    func animate(circle: UIImageView, counter: Int) {
        var counter = counter
        
        UIView.animate(withDuration: 0.4, delay: 0, options: .curveLinear) {
            circle.frame = self.position[counter]
            circle.layer.cornerRadius = circle.frame.width / 2
            
            switch counter {
            case 1:
                if circle == self.circle1 {
                    self.circle1.layer.zPosition = 2
                }
            case 3:
                if circle == self.circle1 {
                    self.circle1.layer.zPosition = 0
                }
            default:
                print()
            }
        } completion: { (completed) in
            
            switch counter {
            case 0...2:
                counter += 1
            case 3:
                counter = 0
            default:
                print()
            }
            
            if self.isAnimated {
                self.animate(circle: circle, counter: counter)
            }
        }
    }
}
