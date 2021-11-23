//
//  HomeViewModel.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/18.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var users = [UserRepresentable]()
    
    func loadData() {
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
            print("Invalid url")
            return
        }
        
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([UserRepresentable].self, from: data) {
                    DispatchQueue.main.async {
                        self.users = decodedResponse
                        
                    }
                    return
                }
            }
            print("Fetch failed \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}
