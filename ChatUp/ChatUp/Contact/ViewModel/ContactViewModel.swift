//
//  ContactViewModel.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 01/04/25.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class ContactViewModel: ObservableObject {
    
    @Published var contacts: [Contact] = []
    @Published var isLoading = false
    
    var isLoaded = false
    
    func getContacts() {
        if isLoaded { return }
        isLoading = true
        isLoaded = true
        Firestore.firestore().collection("users")
            .getDocuments { querySnapshot, error in
                if let error = error {
                    print("Erro ao buscar contatos: \(error)")
                    return
                }
                
                for document in querySnapshot!.documents {
                    if Auth.auth().currentUser?.uid != document.documentID {
                        print("ID \(document.documentID) \(document.data())")
                        self.contacts.append(Contact(uuid: document.documentID,
                                                     name: document.data()["name"] as! String,
                                                     profileUrl: document.data()["profileUrl"] as! String))
                    }
                }
                self.isLoading = false
            }
    }
}
