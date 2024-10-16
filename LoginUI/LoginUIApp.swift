//
//  LoginUIApp.swift
//  LoginUI
//
//  Created by user246073 on 10/15/24.
//

import SwiftUI

@main
struct LoginUIApp: App {
    @State private var contentViewVM = ContentViewViewModel()
    @StateObject private var loginViewVM = LoginViewViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .environment(contentViewVM)
        .environmentObject(loginViewVM)
    }
}
