//
//  Timestamp.swift
//  speach
//
//  Created by Aulia Octaviani on 07/06/24.
//

import Foundation
import Firebase

// time formatter
extension Timestamp {
    func timestampString() -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
        formatter.maximumUnitCount = 1
        formatter.unitsStyle = .abbreviated
        return formatter.string(from: self.dateValue(), to: Date()) ?? ""
    }
}
