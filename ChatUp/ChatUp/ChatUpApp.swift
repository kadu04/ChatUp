//
//  ChatUpApp.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 28/03/25.
//

import SwiftUI
import Firebase
import FirebaseAuth

@main
struct ChatUpApp: App {
    
    init() {
        FirebaseApp.configure()
//         Forçar para deslogar
//         try! Auth.auth().signOut()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


// ContentView -> tela de conteúdo
