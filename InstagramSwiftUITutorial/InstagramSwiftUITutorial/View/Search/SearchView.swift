//
//  SearchView.swift
//  InstagramSwiftUITutorial
//
//  Created by Erkan Ozturk on 18.11.2023.
//

import SwiftUI

struct SearchView: View {
    //MARK: - PROPERTIES

    @State var searchText = ""
    @State var inSearchMode = false
    @ObservedObject var viewModel = SearchViewModel()

    var body: some View {
        ScrollView {
            //MARK: - SEARCH BAR

            SearchBar(text: $searchText, isEditing: $inSearchMode)
                .padding()

            //MARK: - GRID VIEW- USER- LISTVIEW
            ZStack {
                if inSearchMode {
                    UserListView(viewModel: viewModel)
                } else {
                    PostGridView()
                }
            }


        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
