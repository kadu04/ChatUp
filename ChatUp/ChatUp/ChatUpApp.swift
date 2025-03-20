//
//  ChatUpApp.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 19/03/25.
//

import SwiftUI
import Firebase

@main
struct ChatUpApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            SignInView()
        }
    }
}
