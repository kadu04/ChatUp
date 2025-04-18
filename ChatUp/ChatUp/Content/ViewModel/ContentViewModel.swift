//
//  ContentViewModel.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 01/04/25.
//

import Foundation
import FirebaseAuth

class ContentViewModel: ObservableObject {
    
    @Published var isLogged = Auth.auth().currentUser != nil
    
    func onAppear() {
        Auth.auth().addStateDidChangeListener { auth, user in
            self.isLogged = user != nil
        }
    }
}
