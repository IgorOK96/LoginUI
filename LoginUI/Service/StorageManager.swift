//
//  StorageManager.swift
//  LoginUI
//
//  Created by user246073 on 10/16/24.
//

import SwiftUI

final class StorageManager {
    static let shared = StorageManager()
    
    @AppStorage("userName") private var userName: String = ""
    @AppStorage("isRegistered") private var isRegistered: Bool = false

    func saveUser(_ user: User) {
        userName = user.name
        isRegistered = user.isRegistered
    }

    func loadUser() -> User {
        return User(name: userName, isRegistered: isRegistered)
    }

    func clearUser() {
        userName = ""
        isRegistered = false
    }
}
