//
//  RotatingIndicatorViewController.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/06.
//

import UIKit

class RotatingIndicatorViewController: UIViewController {
    
    let rotatingActiveIndicatorView = RotatngActiveIndicatorView()
    
    @IBOutlet weak var dataCommunicationButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataCommunicationButton.layer.cornerRadius = 20

        view.addSubview(rotatingActiveIndicatorView)
        NSLayoutConstraint.activate([
            rotatingActiveIndicatorView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            rotatingActiveIndicatorView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            rotatingActiveIndicatorView.widthAnchor.constraint(equalToConstant: 200),
            rotatingActiveIndicatorView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    @IBAction func didTapStartCommunication(_ sender: UIButton) {
        rotatingActiveIndicatorView.isAnimated = !rotatingActiveIndicatorView.isAnimated
        if rotatingActiveIndicatorView.isAnimated {
            dataCommunicationButton.setTitle("データ通信を終了する", for: .normal)
            rotatingActiveIndicatorView.animate(circle: rotatingActiveIndicatorView.circle1, counter: 1)
            rotatingActiveIndicatorView.animate(circle: rotatingActiveIndicatorView.circle2, counter: 3)
        } else {
            dataCommunicationButton.setTitle("データ通信を開始する", for: .normal)
        }
    }
}
