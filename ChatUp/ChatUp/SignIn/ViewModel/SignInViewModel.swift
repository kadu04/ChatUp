//
//  SignInViewModel.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 19/03/25.
//

import Foundation

class SignInViewModel: ObservableObject {
    
    var email = ""
    var passaword = ""
    
    func signIn() {
        print("email: \(email), senha: \(passaword)")
    }
}
