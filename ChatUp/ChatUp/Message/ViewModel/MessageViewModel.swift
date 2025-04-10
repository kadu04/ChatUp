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
    
    private var handleEnable = true
    
    init(repo: MessageRepository) {
        self.repo = repo
    }
    
    func getContacts() {
        repo.getContacts { contacts in
            if self.handleEnable {
                self.contacts = contacts
            }
        }
    }
    
    func handleEnable(enable: Bool) {
        self.handleEnable = enable
    }
    
    func logout() {
        repo.logout()
    }
}
