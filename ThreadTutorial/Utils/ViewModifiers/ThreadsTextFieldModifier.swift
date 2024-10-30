//
//  ThreadsTextFieldModifier.swift
//  ThreadTutorial
//
//  Created by Vivek Chahal on 10/29/24.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View{
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
