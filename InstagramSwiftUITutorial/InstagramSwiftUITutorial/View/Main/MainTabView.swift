//
//  MainTabView.swift
//  InstagramSwiftUITutorial
//
//  Created by Erkan Ozturk on 18.11.2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        NavigationView {
            TabView {
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                    }

                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }

                UploadPostView()
                    .tabItem {
                        Image(systemName: "plus.square")
                    }

                NotificationsView()
                    .tabItem {
                        Image(systemName: "heart")
                    }

                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                    }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: logoutButton)
            .accentColor(.black)
        }

    }
    var logoutButton: some View {
        Button(action: {
            AuthViewModel.shared.signout()
        }, label: {
            Text("Logout").foregroundColor(.black)
        })
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
