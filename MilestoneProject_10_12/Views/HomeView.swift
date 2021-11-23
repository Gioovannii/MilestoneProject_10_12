//
//  HomeView.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/18.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    @Environment(\.managedObjectContext) var moc
    //    @FetchRequest(entity: User.entity(), sortDescriptors: []) var users: FetchedResults<User>
    
    var body: some View {
        NavigationView {
            List(viewModel.users, id: \.id) { user in
                //            List(users, id: \.self) { user in
                NavigationLink(destination: DetailView(
                    viewModel: DetailViewModel(user: user))) {
                        HomeViewCell(name: user.name, age: user.age)
                    }
            }
            .navigationTitle("User List")
            .onAppear(perform: viewModel.loadData)
            .onAppear(perform: saveUsers)
        }
    }
    
    func saveUsers() {
        
        for user in viewModel.users {
            let userRepresentable = User(context: moc)
            userRepresentable.id = user.id
            userRepresentable.isActive = user.isActive
            userRepresentable.id = user.id
            userRepresentable.registered = user.registered
            userRepresentable.tags = user.tags
            userRepresentable.friends = user.friends as? [Friend]
        }
        try? self.moc.save()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
