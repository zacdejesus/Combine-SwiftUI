//
//  POC_SwitUI_CombineApp.swift
//  POC-SwitUI-Combine
//
//  Created by Z on 14/01/2023.
//

import SwiftUI

@main
struct POC_SwitUI_CombineApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
