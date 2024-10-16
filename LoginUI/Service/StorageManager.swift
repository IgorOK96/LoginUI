//
//  StorageManager.swift
//  LoginUI
//
//  Created by user246073 on 10/16/24.
//

import SwiftUI

final class StorageManager {
    static let shared = StorageManager()
    
    @AppStorage("userName") private var userData: Data?
    
    private init() {}

    func saveUser(_ user: User) {
        userData = try? JSONEncoder().encode(user)

    }
    
    func fetchUser() -> User {
        guard let userData else { return User(name: "", isRegistered: false) }
        let user = try? JSONDecoder().decode(User.self, from: userData)
        return user ?? User(name: "", isRegistered: false)
    }

    func clearUser() {
        userData = nil
    }
}

