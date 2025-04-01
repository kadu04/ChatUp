//
//  MessageViewModel.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 01/04/25.
//

import Foundation
import FirebaseAuth

class MessageViewModel: ObservableObject {
    
    func logout() {
        try? Auth.auth().signOut()
    }
}
