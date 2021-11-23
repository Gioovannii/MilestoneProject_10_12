//
//  FriendDetailsView.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/19.
//

import SwiftUI

struct FriendDetailsView: View {
    @ObservedObject var viewModel: FriendViewModel
    
    var body: some View {
        Text("Hello, this is my friend \(viewModel.friend.name)")
    }
}

struct FriendDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailsView(viewModel: FriendViewModel(friend: UserRepresentable.dummyUser.friends.first!))
    }
}
