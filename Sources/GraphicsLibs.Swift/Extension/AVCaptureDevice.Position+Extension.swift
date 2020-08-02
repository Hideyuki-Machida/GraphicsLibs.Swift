//
//  AVCaptureDevice.Position+Extension.swift
//  
//
//  Created by hideyuki machida on 2020/08/02.
//

import AVFoundation
import Foundation

extension AVCaptureDevice.Position {
    public var toString: String {
        switch self {
        case .back: return "back"
        case .front: return "front"
        case .unspecified: return "unspecified"
        @unknown default: return "unspecified"
        }
    }
}
