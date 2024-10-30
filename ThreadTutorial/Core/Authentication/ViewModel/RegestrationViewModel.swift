//
//  RegestrationViewModel.swift
//  ThreadTutorial
//
//  Created by Vivek Chahal on 10/29/24.
//

import Foundation

class RegestrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    @Published var username = ""
    
    @MainActor
    func createUser() async throws{
        try await AuthService.shared.createUser(
            withEmail: email,
            password: password,
            fullname: fullname,
            username: username
        )
    }
}
