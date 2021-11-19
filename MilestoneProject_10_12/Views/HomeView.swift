//
//  HomeView.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/18.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.users, id: \.id) { user in
                NavigationLink(destination: DetailView(
                    viewModel: DetailViewModel(user: user))) {
                        HStack {
                            Text(user.name)
                            Spacer()
                            Text("\(user.age) ans")
                        }
                    }
            }
            .navigationTitle("User List")
            .onAppear(perform: viewModel.loadData)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
