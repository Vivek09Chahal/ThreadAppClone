//
//  PreviewProvider.swift
//  ThreadTutorial
//
//  Created by Vivek Chahal on 10/30/24.
//

import SwiftUI
import FirebaseCore

extension PreviewProvider{
//    static var dev: DeveloperPreview {
//        return DeveloperPreview.shared
//    }
}

class DeveloperPreview{
    static let shared = DeveloperPreview()
    
    let user  = User(id: NSUUID().uuidString, fullname: "Vivek", email: "vivekchahal1156@gmail.com", username: "vkc1156")
    let thread = Thread(ownerUid: "123", caption: "Hello World", timestamp: Timestamp(), likes: 0)
}
