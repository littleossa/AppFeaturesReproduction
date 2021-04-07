//
//  TriangleButton.swift
//  AppFeaturesReproduction
//
//  Created by 平岡修 on 2021/04/07.
//

import UIKit

class OctagonButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        drawOctagon()
    }
    
    private func drawOctagon() {
        let path = createOctagonPath()
        
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        
        self.layer.masksToBounds = true
        self.layer.mask = mask
        
        let borderShape = CAShapeLayer()
        borderShape.path = path.cgPath
//        borderShape.lineWidth = 4.0
//        borderShape.strokeColor = UIColor.red.cgColor
        borderShape.fillColor = UIColor.clear.cgColor
        self.layer.insertSublayer(borderShape, at: 0)
    }
    
    private func createOctagonPath() -> UIBezierPath {
        
        let path = UIBezierPath()
        
        let centerX = self.center.x - self.frame.origin.x
        let centerY = self.center.y - self.frame.origin.y

        let rotation = 22.5 * Double.pi / 180

        for i in 0 ..< 8 {
            let radius = rotation + .pi * Double(i) * 2.0 / 8.0 - Double.pi / 2
                    let drawPoint:CGPoint =
                        CGPoint(x: centerX + self.frame.width / 2.5 * CGFloat(cos(radius)) ,
                                y: centerY - self.frame.height / 2.5 * CGFloat(sin(radius)) )
                    if i == 0 {
                        path.move(to: drawPoint)
                    } else {
                        path.addLine(to: drawPoint)
                    }
                }
                path.close()
                return path
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        if !createOctagonPath().contains(point) {
            // タッチ領域外
            return nil
        } else {
            return super.hitTest(point, with: event)
        }
    }
}
