//
//  UserListView.swift
//  InstagramSwiftUITutorial
//
//  Created by Erkan Ozturk on 20.11.2023.
//

import SwiftUI

struct UserListView: View {
    @ObservedObject var viewModel : SearchViewModel
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach( viewModel.users) { _ in
                    NavigationLink(
                        destination: ProfileView(),
                        label: {
                        UserCell()
                            .padding(.leading)
                    })
                }
            }
        }
    }
}

