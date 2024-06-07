//
//  PreviewProvider.swift
//  speach
//
//  Created by Aulia Octaviani on 05/06/24.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "0ctavia", email: "via@gmail.com", username: "octavia")
}
 
