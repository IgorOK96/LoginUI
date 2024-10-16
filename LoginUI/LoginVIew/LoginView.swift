//
//  LoginView.swift
//  LoginUI
//
//  Created by user246073 on 10/15/24.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                TextField("Enter your name", text: $loginViewVM.name)
                    .multilineTextAlignment(.center)
                
                Text("\(loginViewVM.name.count)")
                    .font(.headline)
                    .foregroundColor(
                        loginViewVM.isValidUser() ? .green : .red
                    )
            }
            .padding(.trailing, 20)
            Button(action: loginViewVM.registerUser) {
                Label("OK", systemImage: "checkmark.circle")
            }
            .disabled(!loginViewVM.isValidUser())
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(LoginViewViewModel())
}
