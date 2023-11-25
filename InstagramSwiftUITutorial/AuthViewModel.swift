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

    static let shared = AuthViewModel()
    
    init() {
        userSession = Auth.auth().currentUser
        fetcUser()
    }

    //MARK: - LOGIN
    func login(withEmal email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) {result, error in
            if let error = error {
                print("DeBUG: Login failed \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else {return}
            self.userSession = user
        }
    }

    //MARK: - REGISTER
    func register(withEmail email :String, password: String, image: UIImage?,
                  fullname: String, username: String) {
        guard let image = image else {return}


        ImageUploader.uploadImage(image: image) { imageUrl in
            Auth.auth().createUser(withEmail: email, password: password) {result, error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }

                guard let user = result?.user else {return}
                print("Successfully registered user...")

                let data = [
                    "email" : email,
                    "username" : username,
                    "fullname" : fullname,
                    "profileImageUrl" : imageUrl,
                    "uid" : user.uid
                ]

                COLLECTION_USERS.document(user.uid).setData(data) {_ in
                    print("Successfully uploaded user data user...")
                    self.userSession = user
                }

            }
        }
    }

    //MARK: - SIGNOUT
    func signout() {
        self.userSession = nil
        try? Auth.auth().signOut()
        
    }
    func resetPassord() {
        
    }
    
    func fetcUser() {
        guard let uid = userSession?.uid else {return}
        COLLECTION_USERS.document(uid).getDocument { snapshot, _ in
            guard let user = try? snapshot?.data(as: User.self) else {return}
            print("DEBUG: User is \(user)")
        }
    }
    
    
}
