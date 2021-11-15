//
//  ContentView.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
    
    func loadData() {
        guard let url = "https://www.hackingwithswift.com/samples/friendface.json" else {
            print("Invalid url")
            return
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
