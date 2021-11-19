//
//  DetailView.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/18.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var detailViewModel: DetailViewModel
    
    var body: some View {
        ZStack {
            NavigationView {
                
                let user = detailViewModel.user
                VStack {
                    Text("I work for \(detailViewModel.user.company)")
                    Text("My e-mail is \(detailViewModel.user.email)")
                    Text("My address is \(detailViewModel.user.address)")
                    Text("I registered  \(detailViewModel.user.registered)")

                    Text("A small description of me \(detailViewModel.user.about)")

                    
                }
            }
            .navigationTitle(detailViewModel.user.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(detailViewModel: DetailViewModel(user: User.dummyUser))
    }
}
