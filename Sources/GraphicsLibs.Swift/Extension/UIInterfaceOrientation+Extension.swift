//
//  UIInterfaceOrientation+Extension.swift
//  
//
//  Created by hideyuki machida on 2020/08/02.
//

import AVFoundation
import Foundation
import UIKit

public extension UIInterfaceOrientation {
    var toAVCaptureVideoOrientation: AVCaptureVideoOrientation? {
        switch self {
        case .unknown: return nil
        case .portrait: return AVCaptureVideoOrientation.portrait
        case .portraitUpsideDown: return AVCaptureVideoOrientation.portraitUpsideDown
        case .landscapeLeft: return AVCaptureVideoOrientation.landscapeLeft
        case .landscapeRight: return AVCaptureVideoOrientation.landscapeRight
        @unknown default:
            return nil
        }
    }
}
