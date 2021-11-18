//
//  ContentView.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/15.
//

import SwiftUI

struct ContentView: View {
    
    @State var users = [User]()
    
    var body: some View {
        List(users, id: \.id) { user in
            
            Text("\(user.name)")
        }
        .onAppear(perform: loadData)
    }
    
    
    func loadData() {
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
            print("Invalid url")
            return
        }
        
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(User.self, from: data) {
                    DispatchQueue.main.async {
                        print(decodedResponse)
                        self.user = decodedResponse
                    }
                    return
                }
            }
            print("Fetch failed \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(user: User(id: "111", isActive: false, name: "Giovanni",
                                age: 31, company: "openClassrooms", email: "gaffejonathan@ymail.com",
                                address: "myAdress", about: "Rien", registered: Date(),
                                tags: [], friends: []))
    }
}
