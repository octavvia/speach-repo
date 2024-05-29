//
//  ProfileSpeachFilter.swift
//  speach
//
//  Created by Aulia Octaviani on 24/05/24.
//

import Foundation

enum ProfileSpeachFilter: Int, CaseIterable, Identifiable{
    case speachs
    case replies
    case highlight
    
    var title: String {
        switch self{
        case .speachs: return "Speachs"
        case .replies: return "Replies"
        case .highlight: return "Highlights"
        }
    }
    
    var id: Int {return self.rawValue}
}
