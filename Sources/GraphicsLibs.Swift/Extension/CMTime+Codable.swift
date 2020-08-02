//
//  CMTime+Codable.swift
//  
//
//  Created by hideyuki machida on 2020/08/02.
//

import AVFoundation

extension CMTime {
    enum CodingKeys: String, CodingKey {
        case value
        case timescale
        case flags
    }
}

extension CMTime: Decodable {
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.init()
        value = CMTimeValue(try values.decode(Int32.self, forKey: .value))
        timescale = CMTimeScale(try values.decode(Int64.self, forKey: .timescale))
        flags = CMTimeFlags.init(rawValue: try values.decode(UInt32.self, forKey: .flags))
    }
}

extension CMTime: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(value, forKey: .value)
        try container.encode(timescale, forKey: .timescale)
        try container.encode(flags.rawValue, forKey: .flags)
    }
}
