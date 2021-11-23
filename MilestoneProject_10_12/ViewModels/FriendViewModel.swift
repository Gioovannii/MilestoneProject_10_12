//
//  FriendViewModel.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/19.
//

import Foundation

class FriendViewModel: ObservableObject {
    @Published var friend: FriendRepresentable
    
    init(friend: FriendRepresentable) {
        self.friend = friend
    }
}
