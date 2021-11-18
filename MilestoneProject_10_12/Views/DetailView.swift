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
        
        Text("Hello, World!")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(user: User.dummyUser)
    }
}
