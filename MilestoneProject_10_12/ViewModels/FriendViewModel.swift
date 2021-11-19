//
//  FriendViewModel.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/19.
//

import Foundation

class FriendViewModel: ObservableObject {
    @Published var user: User
    
    init(user: User) {
        self.user = user
    }
}
