//
//  AutoSideScrollingTextViewController.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/05.
//

import UIKit

class AutoSideScrollingTextViewController: UIViewController {
    
    @IBOutlet weak var autoSideScrollingLabel: UILabel!
    @IBOutlet weak var midiumCircleView: UIView!
    @IBOutlet weak var smallCircleView: UIView!
    @IBOutlet weak var noseBleedImage: UIImageView!
    
    enum ScrollState {
        case started
        case stopped
    }
    let originText = " 今日も鼻血が止まらないなぁ。そろそろ貧血になりそう...　　　　　　　　　　"
    var scrollState: ScrollState = .stopped
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(
            self, selector: #selector(viewDidEnterBackground),
            name: NSNotification.Name(rawValue: "applicationDidEnterBackground"),
            object: nil)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        stopTimer()
    }
    
    private func configureUI() {
        autoSideScrollingLabel.layer.cornerRadius = 10
        autoSideScrollingLabel.clipsToBounds = true
        autoSideScrollingLabel.text = originText
        
        midiumCircleView.circle()
        smallCircleView.circle()
        noseBleedImage.circle()
        
        let tapGuesture = UITapGestureRecognizer(target: self, action: #selector(didTapScreen))
        view.addGestureRecognizer(tapGuesture)
    }
    
    @objc func didTapScreen() {
        
        switch scrollState {
        case .started:
            // Timer is stopped
            stopTimer()
            
        case .stopped:
            scrollState = .started
            // Timer starts
            timer = Timer.scheduledTimer(timeInterval: 0.22, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
        }
    }
    
    @objc func timerUpdate() {
        guard let inistialCharacter = autoSideScrollingLabel.text?.first,
              let text = autoSideScrollingLabel.text?.dropFirst() else {
            return
        }
        autoSideScrollingLabel.text = String(text) + String(inistialCharacter)
    }
    
    private func stopTimer() {
        scrollState = .stopped
        timer.invalidate()
        autoSideScrollingLabel.text = originText
    }
    
    @objc func viewDidEnterBackground() {
        stopTimer()
    }
}
