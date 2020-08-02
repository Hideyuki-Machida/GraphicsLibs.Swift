//
//  UIImage+Extension.swift
//  
//
//  Created by hideyuki machida on 2020/08/02.
//

#if os(iOS)
import UIKit

extension UIImage {
    public func orientationCiImage() -> CIImage? {
        guard var ciimage: CIImage = CIImage.init(image: self) else { return nil }
        let orientation: CGImagePropertyOrientation
        switch self.imageOrientation {
        case .up: orientation = .up
        case .down: orientation = .down
        case .left: orientation = .left
        case .right: orientation = .right
        case .leftMirrored: orientation = .leftMirrored
        case .rightMirrored: orientation = .rightMirrored
        case .upMirrored: orientation = .upMirrored
        case .downMirrored: orientation = .downMirrored
        @unknown default: orientation = .up
        }
        ciimage = ciimage.oriented(orientation)
        return ciimage
    }
}
#endif
