//
//  ProfileHeaderView.swift
//  InstagramSwiftUITutorial
//
//  Created by Erkan Ozturk on 22.11.2023.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                .clipShape(Circle())

                Spacer()
                HStack(spacing: 16) {
                    UserStatView(value: 1, title: "Post")
                    UserStatView(value: 2, title: "Followers")
                    UserStatView(value: 3, title: "Following")
                }
                .padding(.trailing, 32)
            }

            Text("Bruce Wayne")
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading, .top])

            Text("Gotham's Dark Night || Billionaire")
                .font(.system(size: 15))
                .padding(.leading)
                .padding(.top, 1)

            HStack {
                Spacer()
               ProfileActionButtonView()
                Spacer()
            }.padding(.top)
        }
    }
}



struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
