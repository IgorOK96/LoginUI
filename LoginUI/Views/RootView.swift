//
//  RootView.swift
//  LoginUI
//
//  Created by user246073 on 10/15/24.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    @State private var contentViewVM = ContentViewViewModel()

    
    var body: some View {
        if loginViewVM.isLoggedIn {
            ContentView(contentViewVM: contentViewVM)
        } else {
            LoginView()
        }
    }
}

#Preview {
    RootView()
        .environmentObject(LoginViewViewModel())
}
