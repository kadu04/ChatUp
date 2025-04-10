//
//  MessageViewModel.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 01/04/25.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class MessageViewModel: ObservableObject {
    
    @Published var isLoading = false
    @Published var contacts: [Contact] = []
    
    private let repo: MessageRepository
    
    init(repo: MessageRepository) {
        self.repo = repo
    }
    
    func getContacts() {
        repo.getContacts { contacts in
            self.contacts = contacts
        }
    }
    
    func logout() {
        repo.logout()
    }
}
