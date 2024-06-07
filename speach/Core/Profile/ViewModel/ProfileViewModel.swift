//
//  ProfileViewModel.swift
//  speach
//
//  Created by Aulia Octaviani on 05/06/24.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject{
    @Published var currentUser: User?
    private var cancllables = Set<AnyCancellable>()
    
    init() {
        setupSubcribers()
    }
    
    private func setupSubcribers() {
        UserService.shared.$currentUser.sink { [weak self] user in self?.currentUser = user
            print("DEBUG: User in view model from combine is \(user)")
        }.store(in: &cancllables)
    }
}
