//
//  CenterModifier.swift
//  Africa
//
//  Created by Erkan Ozturk on 9.11.2023.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
