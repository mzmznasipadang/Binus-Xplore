import SwiftUI

@main
struct Binus_XploreApp: App {
    let persistenceController = PersistenceController.shared
    let globalData = GlobalData()


    var body: some Scene {
        WindowGroup {
            Splash()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(globalData)
        }
    }
}

