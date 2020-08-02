//
//  CIImage+Extended.swift
//  
//
//  Created by hideyuki machida on 2020/08/02.
//

import CoreImage

extension CIImage {
    
    func calcExtent() -> CGRect {
        if self.extent.origin.x < 0 || self.extent.origin.y < 0 {
            // (-15.0, -15.0, 750.0, 1310.0) iPhone 5
            // @see : http://stackoverflow.com/questions/15726967/cibloom-makes-image-smaller
            // キャプチャー時のBloomだけマイナス値となる...
            let x = abs(self.extent.origin.x)
            let y = abs(self.extent.origin.y)
            let diff: CGFloat = 2.0625
            return CGRect(x: 0, y: 0, width: self.extent.size.width - x*diff, height: self.extent.size.height - y*diff)
        } else {
            return self.extent
        }
    }
}
