//
//  PentagonButtonViewController.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/07.
//

import UIKit

class OctagonButtonViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var tapLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapLabel.isHidden = true
    }
    
    
    @IBAction func didTouchDownButton(_ sender: UIButton) {
        tapLabel.isHidden = false
        if messageLabel.text == "ねぇ" {
            messageLabel.text = "鼻血拭いて"
        } else {
            messageLabel.text = "ねぇ"
        }
    }
    
    @IBAction func didTouchUpInsideButton(_ sender: UIButton) {
        tapLabel.isHidden = true
    }
}
