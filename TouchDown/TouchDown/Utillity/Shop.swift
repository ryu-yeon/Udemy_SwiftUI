//
//  Shop.swift
//  TouchDown
//
//  Created by 유연탁 on 2023/01/01.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
