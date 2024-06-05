//
//  User.swift
//  speach
//
//  Created by Aulia Octaviani on 03/06/24.
//

import Foundation


struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}

