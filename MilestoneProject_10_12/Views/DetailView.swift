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
            
            Section(header: Text("Informations")) {
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
                    Text(String().convertDateFormat(inputDate: user.registered))
                }
            }
            
            Section(header: Text("Work").fontWeight(.semibold)) {
                Text("\(user.company)©️")
            }
            
            Section(header: Text("My friends :")
                        .fontWeight(.semibold)) {
                
                ForEach(user.friends, id: \.id) { friend in
                    NavigationLink(destination: FriendDetailsView(viewModel: FriendViewModel(friend: friend))) {
                        Text("\(friend.name)")
                            .foregroundColor(.accentColor)
                    }
                }
            }
            
            Section(header: Text("Here is my tags :").fontWeight(.semibold)) {
                
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
        .onAppear(perform: changeBackground)
    }
    
    func changeBackground() {
        UITableView.appearance().backgroundColor = .clear
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(viewModel: DetailViewModel(user: User.dummyUser))
    }
}
