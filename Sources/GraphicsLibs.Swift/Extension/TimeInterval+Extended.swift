//
//  TimeInterval+Extended.swift
//  
//
//  Created by hideyuki machida on 2020/08/02.
//

import Foundation

extension TimeInterval {

    public var hours: Int {
        return Int(self / 60 / 60)
    }

    public var minutes: Int {
        return Int(self / 60)
    }

    public var seconds: Int {
        return Int(fmod(self, 60.0))
    }

    public var hhmmssString: String {
        return String(format: "%02i:%02i:%02i", arguments: [self.hours, self.minutes, self.seconds])
    }


    public var mssString: String {
        return String(format: "%02i:%02i", arguments: [self.minutes, self.seconds])
    }
}
