//
//  NatificationView.swift
//  InstagramSwiftUITutorial
//
//  Created by Erkan Ozturk on 18.11.2023.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 20) {
                ForEach(0 ..< 20) { _ in
                    NotificationCell()
                        .padding(.top)
                }
            }
        }
    }
}

struct NatificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
