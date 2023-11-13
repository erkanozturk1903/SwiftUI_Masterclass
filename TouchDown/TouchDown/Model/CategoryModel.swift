//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Erkan Ozturk on 13.11.2023.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
