//
//  SKNode+Extension.swift
//  
//
//  Created by hideyuki machida on 2020/08/02.
//

import Foundation
import SpriteKit

extension SKNode {
    
    public func setTransform(transform: CGAffineTransform, animated: Bool, duration: TimeInterval = 1.0) {
        if animated {
            let s: SKAction = SKAction.scale(to: transform.scale, duration: duration)
            let r: SKAction = SKAction.rotate(toAngle: transform.radian, duration: duration)
            let p: SKAction = SKAction.move(to: CGPoint(x: transform.tx, y: transform.ty), duration: duration)
            s.timingMode = SKActionTimingMode.easeOut
            r.timingMode = SKActionTimingMode.easeOut
            p.timingMode = SKActionTimingMode.easeOut
            self.run(SKAction.group([s, r, p]))
        } else {
            self.xScale = transform.scale
            self.yScale = transform.scale
            self.zRotation = transform.radian
            self.position = CGPoint(x: transform.tx, y: transform.ty)
        }
    }
    
}

