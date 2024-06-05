//
//  ContentViewModel.swift
//  speach
//
//  Created by Aulia Octaviani on 03/06/24.
//

import Foundation
import Combine
import Firebase

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private var cancllables = Set<AnyCancellable>()
    
    init() {
        setupSubcribers()
    }
    
    private func setupSubcribers() {
        AuthService().$userSession
        AuthService.shared.$userSession.sink { [weak self] userSession in self?.userSession = userSession
        }.store(in: &cancllables)
    }
}
