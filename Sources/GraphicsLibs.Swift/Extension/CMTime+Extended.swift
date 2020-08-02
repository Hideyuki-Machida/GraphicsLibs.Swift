//
//  CMTime+Extended.swift
//  
//
//  Created by hideyuki machida on 2020/08/02.
//

import Foundation
import AVFoundation

extension CMTime {
    public static func + (left: CMTime, right: CMTimeValue) -> CMTime {
        return CMTime.init(value: left.value + right, timescale: left.timescale)
    }

    public static func - (left: CMTime, right: CMTimeValue) -> CMTime {
        return CMTime.init(value: left.value - right, timescale: left.timescale)
    }

    public static func * (left: CMTime, right: CMTimeValue) -> CMTime {
        return CMTime.init(value: left.value * right, timescale: left.timescale)
    }

    public static func / (left: CMTime, right: CMTimeValue) -> CMTime {
        return CMTime.init(value: left.value / right, timescale: left.timescale)
    }
    }

    extension CMTime {
    public static func + (left: CMTimeValue, right: CMTime) -> CMTime {
        return CMTime.init(value: left + right.value, timescale: right.timescale)
    }

    public static func - (left: CMTimeValue, right: CMTime) -> CMTime {
        return CMTime.init(value: left - right.value, timescale: right.timescale)
    }

    public static func * (left: CMTimeValue, right: CMTime) -> CMTime {
        return CMTime.init(value: left * right.value, timescale: right.timescale)
    }

    public static func / (left: CMTimeValue, right: CMTime) -> CMTime {
        return CMTime.init(value: left / right.value, timescale: right.timescale)
    }
}
