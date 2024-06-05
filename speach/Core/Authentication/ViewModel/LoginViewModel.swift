//
//  LoginViewModel.swift
//  speach
//
//  Created by Aulia Octaviani on 03/06/24.
//

import Foundation


final class LoginViewModel: ObservableObject {
        @Published var email = ""
        @Published var password = ""
        
        @MainActor
        func login() async throws {
            try await AuthService.shared.login(
                withEmail: email,
                password: password
            )
        }
}
