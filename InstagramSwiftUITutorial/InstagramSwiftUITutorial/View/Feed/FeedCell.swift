//
//  FeedCell.swift
//  InstagramSwiftUITutorial
//
//  Created by Erkan Ozturk on 18.11.2023.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            //MARK: - USER INFO

            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)

                Text("joker")
                    .font(.system(size: 14, weight: .semibold))

            }
            .padding([.leading, .bottom], 8)
           
            //MARK: - POST IMAGE
            
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 300)
                .clipped()

            //MARK: - ACTION BUTTONS

            HStack (spacing: 16){
                Button(action: {

                }, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)

                })

                Button(action: {

                }, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)

                })

                Button(action: {

                }, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)

                })
            }
            .padding(.leading, 4)
            .foregroundColor(.black)

            //MARK: - CAPTION
            Text("3 likes")
                .font(.system(size: 14, weight: .semibold))
                .padding(.leading, 8)
                .padding(.bottom, 2)

            HStack {
                Text("batman").font(.system(size: 14, weight: .semibold)) +  Text(" All men have limits. They learn what are and learn not to exceed them. I ignore mine").font(.system(size: 15))
            }.padding(.horizontal, 8)

            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, -2)
        }

    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
