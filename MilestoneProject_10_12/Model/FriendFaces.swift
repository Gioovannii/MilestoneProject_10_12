//
//  FacesJSON.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/15.
//

import Foundation

// MARK: - FacesJSONElement

struct UserRepresentable: Codable, Identifiable {
    let id: String
    let isActive: Bool
    let name: String
    let age: Int
    let company, email, address, about: String
    let registered: String
    let tags: [String]
    let friends: [FriendRepresentable]
}

// MARK: - Friend
struct FriendRepresentable: Codable {
    let id, name: String
}


extension UserRepresentable {
    static let dummyUser = UserRepresentable(
        id: UUID().uuidString, isActive: true,
        name: "Giovanni", age: 31,
        company: "Radiantix", email: "gaffejonathan@ymail.com",
        address: "871 Guernsey Street, Twilight, Illinois, 6059",
        about: "Quis sit non reprehenderit eu incididunt nostrud sunt. Id aute quis non velit elit amet ea Lorem laborum. Incididunt fugiat duis deserunt non consequat qui commodo sint duis deserunt. Ut duis veniam reprehenderit laboris nisi et ullamco enim duis quis adipisicing quis proident.\r\n",
        registered: "2016-11-17T11:40:28-00:00",
        tags: ["laborum",
               "nulla",
               "culpa",
               "irure",
               "eu",
               "labore",
               "qui"],
        friends: [FriendRepresentable(id: "50a48fa3-2c0f-4397-ac50-64da464f9954", name: "Alford Rodriguez"),
                  FriendRepresentable(id: "e8ad0264-aaec-436c-ad6c-26b8fe171245", name: "Chase Jensen"),
                  FriendRepresentable(id: "e8b97347-d6e3-421d-ae7f-d6c6bc8626f3", name: "Leach Walls"),
                  FriendRepresentable(id: "54de729e-1730-4ad6-8452-a95c566460f4", name: "Maureen Larsen")])
}
