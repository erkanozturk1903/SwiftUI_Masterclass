//
//  User.swift
//  InstagramSwiftUITutorial
//
//  Created by Erkan Ozturk on 25.11.2023.
//

import FirebaseFirestoreSwift

struct User : Identifiable, Decodable {
    let username : String
    let email : String
    let profileImageUrl : String
    let fullname : String
    @DocumentID var id: String?
}
