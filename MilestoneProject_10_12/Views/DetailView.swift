//
//  DetailView.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/18.
//

import SwiftUI

struct DetailView: View {
    let user: User
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    Text("This is a detail view from \(user.name)")
                    
                }
            }
            .navigationTitle(user.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(user: User.dummyUser)
    }
}
