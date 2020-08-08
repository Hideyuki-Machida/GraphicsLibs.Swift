//
//  AVDepthData+Extended.swift
//  
//
//  Created by hideyuki machida on 2020/08/02.
//

import Foundation
import AVFoundation

public extension AVDepthData {
    // Depth に変換するメソッド
    func convertToDepth() -> AVDepthData {
        let targetType: OSType
        switch depthDataType {
        case kCVPixelFormatType_DisparityFloat16:
            targetType = kCVPixelFormatType_DepthFloat16
        case kCVPixelFormatType_DisparityFloat32:
            targetType = kCVPixelFormatType_DepthFloat32 default:
                // もともと Depth
                return self
        }
        // Disparity を Depth へ
        return converting(toDepthDataType: targetType)
    }
    // Disparity に変換するメソッド
    func convertToDisparity() -> AVDepthData {
        let targetType: OSType
        switch depthDataType {
        case kCVPixelFormatType_DepthFloat16:
            targetType = kCVPixelFormatType_DisparityFloat16
        case kCVPixelFormatType_DepthFloat32:
            targetType = kCVPixelFormatType_DisparityFloat32
        default:
        // もともと Disparity
            return self
        }
        // Depth を Disparity へ
        return converting(toDepthDataType: targetType)
    }
}
