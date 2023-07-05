//
//  Binus_XploreApp.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 05/07/23.
//

import SwiftUI

@main
struct Binus_XploreApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
