//
//  AuthViewModel.swift
//  InstagramSwiftUITutorial
//
//  Created by Erkan Ozturk on 24.11.2023.
//

import SwiftUI
import Firebase



class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func login() {
        print("Login")
    }
    
    func register() {
        print("Register")
    }
    
    func signout() {
        
    }
    func resetPassord() {
        
    }
    
    func fetcUser() {
        
    }
    
    
}
