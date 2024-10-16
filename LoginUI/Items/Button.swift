//
//  Button.swift
//  LoginUI
//
//  Created by user246073 on 10/16/24.
//

import SwiftUI

struct ButtonView: View {
    var title: String
    var color: Color
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
}

#Preview {
    ButtonView(title: "OK", color: .blue, action: {})
}
