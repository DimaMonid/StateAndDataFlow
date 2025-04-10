//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Дима Монид on 10.04.25.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    private let contentViewVM = ContentViewViewModel()
    
    var body: some View {
        VStack {
            Text("Hi, \(loginViewVM.user.name)!")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(contentViewVM.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            Spacer()
            
            VStack {
                ButtonView(
                    title: contentViewVM.buttonTitle,
                    color: .red,
                    action: contentViewVM.startTimer
                )
                .padding(.top, 50)
                
                Spacer()
                
                ButtonView(
                    title: "LogOut",
                    color: .blue,
                    action: loginViewVM.logout
                )
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(LoginViewViewModel())
}


