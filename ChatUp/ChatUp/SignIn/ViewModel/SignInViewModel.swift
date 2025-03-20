//
//  SignInViewModel.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 19/03/25.
//

import Foundation
import FirebaseAuth

class SignInViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var passaword = ""
    
    @Published var formInvalid = false
    var alertText = ""
    
    @Published var isLoading = false
    
    func signIn() {
        print("email: \(email), senha: \(passaword)")
        
        isLoading = true
        
        Auth.auth().signIn(withEmail: email, password: passaword) {
            result, err in
            guard let user = result?.user, err == nil else {
                self.formInvalid = true
                self.alertText = err!.localizedDescription
                print(err)
                self.isLoading = false
                return
            }
            self.isLoading = false
            print("Usuário logado \(user.uid)")
        }
    }
}
