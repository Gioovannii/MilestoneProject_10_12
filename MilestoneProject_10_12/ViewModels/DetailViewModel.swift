//
//  DetailViewModel.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/18.
//

import Foundation

class DetailViewModel: ObservableObject {
    @Published var user: User
    
    
    /// Get all friends
    /// - Returns: All friends in one line
    func getFriends() -> String {
        var friends = [String]()
        
        for user in user.friends {
            friends.append(user.name)
        }
        return friends.joined(separator: ", ")
    }
    
    init(user: User) {
        self.user = user
    }
}
