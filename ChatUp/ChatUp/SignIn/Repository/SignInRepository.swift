//
//  SignInRepository.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 09/04/25.
//

import Foundation
import FirebaseAuth

class SignInRepository {
    
    func signIn(withEmail email: String, password: String, completion: @escaping (String?) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { result, err in
            guard let user = result?.user, err == nil else {
                print(err!)
                completion(err!.localizedDescription)
                return
            }
            print("Usuário logado \(user.uid)")
            completion(nil)
        }
    }
}
