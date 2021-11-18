//
//  FacesJSON.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/15.
//

import Foundation

// MARK: - FacesJSONElement

struct User: Codable, Identifiable {
    let id: String
    let isActive: Bool
    let name: String
    let age: Int
    let company, email, address, about: String
    let registered: String
    let tags: [String]
    let friends: [Friend]

}

// MARK: - Friend
struct Friend: Codable {
    let id, name: String
}


extension User {
    static let dummyUser = User(
        id: UUID().uuidString, isActive: true,
        name: "Giovanni", age: 31,
        company: "No company", email: "gaffejonathan@ymail.com",
        address: "Homeless", about: "Nothing about",
        registered: "The date", tags: ["one", "two", "three"],
        friends: [])
}
