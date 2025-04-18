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
        // Forçar para desligar
//         try? Auth.auth().signOut()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

// ContentView -> tela de conteúdo
