//
//  HomeViewCell.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/19.
//

import SwiftUI

struct HomeViewCell: View {
    let name: String
    let age: Int
    
    var body: some View {
        HStack {
            Text(name)
            Spacer()
            Text("\(age) years old")
        }
    }
}

struct HomeViewCell_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewCell(name: "Giovanni", age: 31)
    }
}
