//
//  ProfileViewModel.swift
//  ThreadTutorial
//
//  Created by Vivek Chahal on 10/29/24.
//

import Foundation
import Combine
import PhotosUI
import SwiftUI

class CurrentUserProfileViewModel: ObservableObject {
    
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService
            .shared
            .$currentUser
            .sink { [weak self] user in
                self?.currentUser = user
                print("DEBUG: User in view model from combine is \(String(describing: user))")
            }.store(in: &cancellables)
    }
}
