//
//  ContentView.swift
//  TouchDown
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import SwiftUI

struct ContentView: View {
   //MARK: - PROPERTIES


    //MARK: - BODY



    var body: some View {
        ZStack {
            VStack(spacing:0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top,
                             UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)

                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {

                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475)

                        CategoryGridView()

                        TitleView(title: "Helmets")

                        LazyVGrid(columns: gridLayout, spacing: 15, content: {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            }
                        })
                        .padding(15)
                        FooterView().padding(.horizontal)

                    }

                })


            }//: VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//: ZTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

//MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14 Pro")
    }
}
