//
//  MilestoneProject_10_12App.swift
//  MilestoneProject_10_12
//
//  Created by Giovanni Gaffé on 2021/11/15.
//

import SwiftUI

@main
struct MilestoneProject_10_12App: App {
    @Environment(\.scenePhase) var scenePhase
    let persistenceController = PersistenceController.shared
    
    /// Save scenePhase when app move to the background
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
        .onChange(of: scenePhase) { _ in
            persistenceController.save()
        }
    }
}
