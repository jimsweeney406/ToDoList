//
//  LoginViewViewModel.swift
//  todolist
//
//  Created by James Sweeney on 3/10/25.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    
    func login() {
        
        guard validate() else {
            return
        }
        
        // Try to log in
        Auth.auth().signIn(withEmail: email, password: password)
        
    }
    
    
    private func validate() -> Bool {
        errorMessage = ""
        guard
            !email.trimmingCharacters(in: .whitespaces).isEmpty,
            !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Fill in all fields."
            return false
        }
        
        //email@foo.com
        guard email.contains("@") && email.contains(".")else {
            errorMessage = "Invalid email format."
            return false
        }
        
        return true
    }
}
