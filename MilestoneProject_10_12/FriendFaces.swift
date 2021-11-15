//
//  FacesJSON.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/15.
//

import Foundation

// MARK: - FacesJSONElement

struct FriendFaces: Codable {
    let id: String
    let isActive: Bool
    let name: String
    let age: Int
    let company, email, address, about: String
    let registered: Date
    let tags: [String]
    let friends: [Friend]
}

// MARK: - Friend
struct Friend: Codable {
    let id, name: String
}
