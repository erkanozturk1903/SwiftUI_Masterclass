//
//  VideoModel.swift
//  Africa
//
//  Created by Erkan Ozturk on 6.11.2023.
//

import Foundation

struct Video : Codable, Identifiable {
    let id : String
    let name : String
    let headline : String

    // Computed Property

    var thumbnail : String {
        "video-\(id)"
    }
}
