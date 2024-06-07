//
//  Speach.swift
//  speach
//
//  Created by Aulia Octaviani on 06/06/24.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct Speech: Identifiable, Codable {
    @DocumentID var speechId: String?
    let ownerUid: String
    let caption: String
    let timestamp: Timestamp
    var likes: Int
    var user: User?

    var id: String {
        return speechId ?? UUID().uuidString
    }
}

