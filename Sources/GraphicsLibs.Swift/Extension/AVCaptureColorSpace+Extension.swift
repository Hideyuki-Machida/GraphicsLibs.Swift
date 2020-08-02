//
//  AVCaptureColorSpace+Extension.swift
//  
//
//  Created by hideyuki machida on 2020/08/02.
//

import AVFoundation
import Foundation

extension AVCaptureColorSpace {
    public var toString: String {
        switch self {
        case .sRGB: return "sRGB"
        case .P3_D65: return "P3_D65"
        @unknown default: return "sRGB"
        }
    }
}
