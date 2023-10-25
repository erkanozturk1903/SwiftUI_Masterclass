//
//  FruitCardView.swift
//  FructusApp
//
//  Created by Erkan Ozturk on 24.10.2023.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - PROPERTIES

    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //FRUIT: IMAGE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                
                //FRUIT: TITLE
                Text("Blueberyy")
                    .foregroundColor(.white)
                    .font(.title)
                //FRUIT: HEADLINE
                //BUTTON: START
            }//:VSTACK
        }//:ZSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [
        Color("ColorBlueberryLight"),
        Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}

// MARK: - PRIVIEW

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
