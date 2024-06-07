//
//  AuthService.swift
//  speach
//
//  Created by Aulia Octaviani on 03/06/24.
//


import Firebase
import FirebaseFirestoreSwift

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    // login user
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            try await UserService.shared.fetchCurrentUser()
        } catch {
            print("DEBUG: Failed \(error.localizedDescription)")
        }
        
    }
    
    // membuat user baru
    @MainActor
    func createUser(withEmail email: String, password: String, fullname: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            try await uploadUserData(withEmail: email, fullname: fullname, username: username, id: result.user.uid)
            print("Debug: Create User \(result.user.uid)")
        } catch {
            print("Debug: Failed to create \(error.localizedDescription)")
        }
    }
    
    // singn out
    func signOut() {
        try? Auth.auth().signOut() // -> this for backend (firebase)
        self.userSession = nil // -> remove session
        UserService.shared.reset() // -> reset user
    }
    
    // menyimpan data di firestore
    @MainActor
    private func uploadUserData(withEmail email: String, fullname: String, username: String, id: String) async throws{
        let user = User(id: id, fullname: fullname, email: email, username: username)
        guard let userData = try? Firestore.Encoder().encode(user) else { return }
        try await Firestore.firestore().collection("users").document(id).setData(userData)
        UserService.shared.currentUser = user
    }
}
