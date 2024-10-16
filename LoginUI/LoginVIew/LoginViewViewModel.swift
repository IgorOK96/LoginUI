//
//  LoginViewViewModel.swift
//  LoginUI
//
//  Created by user246073 on 10/15/24.
//

import Foundation
import Combine

final class LoginViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var isLoggedIn = false
    
    func isValidUser() -> Bool {
        name.trimmingCharacters(in: .whitespacesAndNewlines).count >= 3
    }
    
    func registerUser() {
        guard isValidUser() else { return }
        
        let user = User(name: name, isRegistered: true)
        StorageManager.shared.saveUser(user)
        isLoggedIn = true
    }
    
    func logout() {
        StorageManager.shared.clearUser()
        name = ""
        isLoggedIn = false
    }
}
