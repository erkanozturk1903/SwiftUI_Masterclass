//
//  SearchViewModel.swift
//  InstagramSwiftUITutorial
//
//  Created by Erkan Ozturk on 25.11.2023.
//

import SwiftUI

class SearchViewModel: ObservableObject {
    @Published var users = [User]()

    init() {
        fetchUsers()
    }

    func fetchUsers() {
        COLLECTION_USERS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else {return}
            self.users = documents.compactMap({ try? $0.data(as: User.self)})
            
            //print(self.users)

        }
    }
}
