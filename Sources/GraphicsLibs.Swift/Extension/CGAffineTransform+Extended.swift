//
//  CGAffineTransform+Extended.swift
//  
//
//  Created by hideyuki machida on 2020/08/02.
//

import UIKit

extension CGAffineTransform {
    public var isPortrait: Bool {
        return (self.a == 0 && self.d == 0 && (self.b == 1.0 || self.b == -1.0) && (self.c == 1.0 || self.c == -1.0))
    }

    public var isRotate: UIInterfaceOrientation {
        let degree: Int = Int(Double(atan2(self.b, self.a)) * 180.0 / Double.pi)
        switch degree {
        case 0:
            return .landscapeRight
        case 90:
            return .portrait
        case 180:
            return .landscapeLeft
        case -90:
            return .portraitUpsideDown
        default:
            return .unknown
        }
    }
}
