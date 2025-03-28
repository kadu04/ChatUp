//
//  SignUpViewModel.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 28/03/25.
//

import Foundation

class SignUpViewModel: ObservableObject {
    
    var name = ""
    var email = ""
    var password = ""
    
    func signUp() {
        print("nome: \(name), email: \(email), senha: \(password)")
    }
}
