//
//  PageModel.swift
//  Pinch
//
//  Created by Erkan Ozturk on 25.10.2023.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
    
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
