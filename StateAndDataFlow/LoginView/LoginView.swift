//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Дима Монид on 10.04.25.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        VStack {
            TextFieldView(loginViewVM: loginViewVM)
            
            Button(action: loginViewVM.login) {
                Label("OK", systemImage: "checkmark.circle")
            }
            .disabled(!loginViewVM.nameIsValid)
        }
        .padding()
    }
    
}

#Preview {
    LoginView()
        .environmentObject(LoginViewViewModel())
}

struct TextFieldView: View {
    @ObservedObject var loginViewVM: LoginViewViewModel
    
    var body: some View {
        ZStack {
            TextField("Enter your name", text: $loginViewVM.user.name)
                .multilineTextAlignment(.center)
            HStack {
                Spacer()
                Text(loginViewVM.userNameCharCount)
                    .font(.callout)
                    .foregroundStyle(loginViewVM.nameIsValid ? .green : .red)
                    .padding([.top, .trailing])
            }
            .padding(.bottom)
        }
    }
}
