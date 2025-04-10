//
//  RootView.swift
//  StateAndDataFlow
//
//  Created by Дима Монид on 10.04.25.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        if loginViewVM.user.isLoggedIn {
            ContentView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    RootView()
        .environmentObject(LoginViewViewModel())
}
