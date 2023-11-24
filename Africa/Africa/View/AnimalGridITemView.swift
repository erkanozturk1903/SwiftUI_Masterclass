//
//  AnimalGridITemView.swift
//  Africa
//
//  Created by Erkan Ozturk on 8.11.2023.
//

import SwiftUI

struct AnimalGridITemView: View {
    //MARK: PROPERTIES
    let animal : Animal
    //MARK: BODY
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridITemView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main
        .decode("animals.json")
    static var previews: some View {
        AnimalGridITemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
