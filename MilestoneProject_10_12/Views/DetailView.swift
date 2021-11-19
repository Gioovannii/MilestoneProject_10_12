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
        ZStack {
            NavigationView {
                
                let user = viewModel.user
                VStack {
                    
                    Text("I work for \(user.company)")
                    Text("My e-mail is \(user.email)")
                    Text("My address is \(user.address)")
                    Text("I registered  \(user.registered)")
                    
                    Text(viewModel.user.tags.joined(separator: ", "))
                        .padding()
                    
                    VStack {
                        Text("A small description of me \(user.about)")
                            .font(.headline)
                        Text(user.about)
                            .padding()
                            .background(Color.green)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                }
            }
            .navigationTitle(viewModel.user.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(viewModel: DetailViewModel(user: User.dummyUser))
    }
}
