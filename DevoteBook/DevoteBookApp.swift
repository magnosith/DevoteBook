//
//  DevoteBookApp.swift
//  DevoteBook
//
//  Created by magnodev on 25/03/22.
//

import SwiftUI

@main
struct DevoteBookApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
