//
//  Thread.swift
//  ThreadTutorial
//
//  Created by Vivek Chahal on 10/30/24.
//

import Foundation
import Firebase
import FirebaseFirestore

struct Thread: Identifiable, Codable{
    @DocumentID var threadId: String?
    let ownerUid: String
    let caption: String
    let timestamp: Timestamp
    var likes: Int
    
    var id: String{
        return threadId ?? NSUUID().uuidString
    }
    
    var user: User?
}
    
