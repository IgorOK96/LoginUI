//
//  ContentView.swift
//  LoginUI
//
//  Created by user246073 on 10/15/24.
//

import SwiftUI
import Observation

struct ContentView: View {
    @Bindable var contentViewVM: ContentViewViewModel
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        VStack {
            Text("Hi, \(loginViewVM.name)!")
                .padding(.top, 100)
                .font(.largeTitle)
            Text(contentViewVM.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            Spacer()
            
            ButtonView(
                title: contentViewVM.buttonTitle,
                color: .red,
                action: contentViewVM.startTimer
            )
            Spacer()
            
            ButtonView(
                title: "LogOut",
                color: .blue,
                action: {
                    loginViewVM.logout()
                })
                
        }
        .padding()
    }
}

#Preview {
    ContentView(contentViewVM: ContentViewViewModel())
        .environment(ContentViewViewModel())
        .environmentObject(LoginViewViewModel())
}
