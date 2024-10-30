//
//  ProfileThreadFilter.swift
//  ThreadTutorial
//
//  Created by Vivek Chahal on 10/29/24.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable{
    case threads
    case replies
    case likes
    
    var title: String{
        switch self{
        case.threads: return "Threads"
        case.replies: return "Replies"
        case.likes: return "likes"
        }
    }
    
    var id: Int {return self.rawValue }
}
