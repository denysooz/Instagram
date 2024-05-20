//
//  Post.swift
//  Instagram
//
//  Created by Denis Dareuskiy on 19.05.24.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Me <3",
            likes: 43543,
            imageUrl: "mary-1",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Me <33",
            likes: 321312,
            imageUrl: "mary-2",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Me <333",
            likes: 43544343,
            imageUrl: "mary-3",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "That city needs a new hero...",
            likes: 12323,
            imageUrl: "batman",
            timestamp: Date(),
            user: User.MOCK_USERS[1]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Subscribe me))",
            likes: 21312,
            imageUrl: "AIgirl",
            timestamp: Date(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Cheese!",
            likes: 123213,
            imageUrl: "albert",
            timestamp: Date(),
            user: User.MOCK_USERS[3]
        ),
    ]
}
