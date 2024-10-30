//
//  User.swift
//  ThreadTutorial
//
//  Created by Vivek Chahal on 10/29/24.
//

import Foundation

struct User: Identifiable, Codable, Hashable{
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
