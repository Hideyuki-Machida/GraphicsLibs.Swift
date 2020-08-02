//
//  CMTimeRange+Extentded.swift
//  
//
//  Created by hideyuki machida on 2020/08/02.
//

import Foundation
import AVFoundation

extension CMTimeRange {
    static public func convertTimeRange(timeRange: CMTimeRange, rate: Float64, timescale: CMTimeScale) -> CMTimeRange {
        let start: CMTime = CMTimeMultiplyByFloat64(timeRange.start, multiplier: rate).convertScale(timescale, method:.roundHalfAwayFromZero)
        let duration: CMTime = CMTimeMultiplyByFloat64(timeRange.duration, multiplier: rate).convertScale(timescale, method:.roundHalfAwayFromZero)
        let newTimeRange: CMTimeRange = CMTimeRange(start: start, duration: duration)
        return newTimeRange
    }
}
