//
//  SettingsLabelView.swift
//  FructusApp
//
//  Created by Erkan Ozturk on 4.11.2023.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTIES

    var labelText: String
    var labelImage: String

    //MARK: - BODY
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
