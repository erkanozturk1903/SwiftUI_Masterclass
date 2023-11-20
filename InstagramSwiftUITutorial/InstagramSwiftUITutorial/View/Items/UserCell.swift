//
//  UserCell.swift
//  InstagramSwiftUITutorial
//
//  Created by Erkan Ozturk on 20.11.2023.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            //MARK: - IMAGE
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())

            //MARK: - Vstack user name fullname
            VStack(alignment: .leading) {
                Text("batman")
                    .font(.system(size: 14, weight: .semibold))

                Text("Bruce Wayne")
                    .font(.system(size: 14))
            }
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
