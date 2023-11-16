//
//  Shop.swift
//  TouchDown
//
//  Created by Erkan Ozturk on 16.11.2023.
//

import Foundation


class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
