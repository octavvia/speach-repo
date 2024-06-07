//
//  ExploreViewModel.swift
//  speach
//
//  Created by Aulia Octaviani on 05/06/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() } // -> task todo buat mencari user
    }
    
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
