//
//  CMFormatDescription+Extension.swift
//  
//
//  Created by hideyuki machida on 2020/08/02.
//

import AVFoundation
import Foundation

public extension CMFormatDescription {
    static func create(from pixelBuffer: CVPixelBuffer) -> CMFormatDescription? {
        var formatDescription: CMFormatDescription?
        CMVideoFormatDescriptionCreateForImageBuffer(allocator: kCFAllocatorDefault, imageBuffer: pixelBuffer, formatDescriptionOut: &formatDescription)
        return formatDescription
    }
}
