//
//  AuthViewModel.swift
//  skillmatch
//
//  Created by 中村優介 on 2025/06/29.
//

import Foundation
import FirebaseAuth
class AuthViewModel {
    //Login
    //Logout
    //Create Account
    func createdAccount(email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password)
    }
    //Delete Account
    
}
