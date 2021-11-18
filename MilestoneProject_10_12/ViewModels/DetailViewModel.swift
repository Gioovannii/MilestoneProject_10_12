//
//  DetailViewModel.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/18.
//

import Foundation

class DetailViewModel: ObservableObject {
    @Published var user: User
    
    init(user: User) {
        self.user = user
    }
}
