//
//  User.swift
//  Instagram
//
//  Created by Denis Dareuskiy on 19.05.24.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(
            id: NSUUID().uuidString,
            username: "marryyar",
            profileImageUrl: nil,
            fullname: "Mary Yarmak",
            bio: "Best",
            email: "maryyar@gmail.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "batman01",
            profileImageUrl: nil,
            fullname: "Bruce Wayne",
            bio: "Dark Knight",
            email: "gothamknight@gmail.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "aigirls",
            profileImageUrl: nil,
            fullname: "Lucy AI",
            bio: "AI is future",
            email: "ai001@gmail.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "einstein_official",
            profileImageUrl: nil,
            fullname: "Albert Einstein",
            bio: "Math is my profession",
            email: "albert_ein@gmail.com"
        )
    ]
}
