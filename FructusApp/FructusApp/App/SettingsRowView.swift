//
//  SettingsRowView.swift
//  FructusApp
//
//  Created by Erkan Ozturk on 4.11.2023.
//

import SwiftUI

struct SettingsRowView: View {

    //MARK: - PROPERTIES

    var name : String
    var content : String? = nil
    var linkLabel: String? = nil
    var linkDestination : String? = nil

    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Erkan / Mira")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()

        SettingsRowView(name: "Website", linkLabel: "SwiftUI MasterClass", linkDestination: "swiftuimasterclass.com")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
