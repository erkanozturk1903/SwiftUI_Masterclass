//
//  ContentView.swift
//  InstagramSwiftUITutorial
//
//  Created by Erkan Ozturk on 18.11.2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        Group {
            //if not logged in show login
            
            if viewModel.userSession == nil {
                LoginView()
            } else {
                MainTabView()
            }
            //else show main interface
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
