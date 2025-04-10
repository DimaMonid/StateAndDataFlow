//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Дима Монид on 10.04.25.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var loginViewVM = LoginViewViewModel(
        user: StorageManager.shared.fetchUser()
    )

    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .environmentObject(loginViewVM)
    }
}
