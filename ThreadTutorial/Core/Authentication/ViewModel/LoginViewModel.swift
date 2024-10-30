//
//  LoginViewModel.swift
//  ThreadTutorial
//
//  Created by Vivek Chahal on 10/29/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws{
        try await AuthService.shared.login(
            withEmail: email,
            password: password
        )
    }
}
