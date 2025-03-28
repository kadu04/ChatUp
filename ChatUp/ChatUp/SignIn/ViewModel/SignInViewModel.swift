//
//  SignInViewModel.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 28/03/25.
//

import Foundation

class SignInViewModel: ObservableObject {
    
    var email = ""
    var password = ""
    
    func signIn() {
        print("email: \(email), senha: \(password)")
    }
}
