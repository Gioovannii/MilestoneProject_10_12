//
//  DetailView.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/18.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: DetailViewModel

    var body: some View {
        
        let user = viewModel.user
        Form {
            
            HStack {
                Text("I work for :")
                    .fontWeight(.semibold)
                Text(user.company)
            }
            HStack {
                Text("My e-mail is :")
                    .fontWeight(.semibold)
                Text(user.email)
            }
            
            HStack {
                Text("My address is :")
                    .fontWeight(.semibold)
                Text(user.address)
            }
            
            HStack {
                Text("I registered the :")
                    .fontWeight(.semibold)
                Text(user.registered)
            }
            HStack {
                Text("My friends :")
                    .fontWeight(.semibold)
            }
                ForEach(user.friends, id: \.id) { friend in
                    NavigationLink(destination: FriendDetailsView(viewModel: FriendViewModel(friend: friend))) {
                        Text("\(friend.name)")
                            .foregroundColor(.accentColor)
                    }
                }
            
            HStack {
                Text("Here is my tags :")
                    .fontWeight(.semibold)
                Text(user.tags.joined(separator: ", "))
            }
            
            VStack {
                Text("A small description of me :")
                    .font(.headline)
                Text(user.about)
                    .padding()
                    .background(Color.green)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
        }
        .font(.body)
        .navigationTitle(viewModel.user.name)
    }
    
    func getFriends() -> String {
        var friends = [String]()
        
        for user in viewModel.user.friends {
            friends.append(user.name)
        }
        return friends.joined(separator: ", ")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(viewModel: DetailViewModel(user: User.dummyUser))
    }
}
