//
//  SplannerApp.swift
//  Shared
//
//  Created by Rosalie Wessels on 11/21/21.
//

import SwiftUI
import Firebase

@main
struct SplannerApp: App {
    
    init() {
            FirebaseApp.configure()
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
