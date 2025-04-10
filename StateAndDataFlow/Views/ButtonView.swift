//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Дима Монид on 10.04.25.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .buttonAppearance(color)
    }
}

#Preview {
    ButtonView(title: "Title", color: .red, action: {})
}
