//
//  RegristationViewModel.swift
//  speach
//
//  Created by Aulia Octaviani on 03/06/24.
//

import Foundation

//final class RegisterationViewModel: ObservableObject {
//    @Published var model = RegisterModel()
//    
//    @MainActor
//    func createUser() async throws {
//        try await AuthService.shared.createUser(withEmail: model.email,
//                                                password: model.password,
//                                                fullName: model.fullName,
//                                                userName: model.username)
//    }
//}

class RegisterationViewModel: ObservableObject{
    
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    @Published var username = ""
    
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(
            withEmail: email,
            password: password,
            fullname: fullname,
            username: username
        )
    }
}
