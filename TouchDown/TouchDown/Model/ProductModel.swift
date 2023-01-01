//
//  ProductModel.swift
//  TouchDown
//
//  Created by 유연탁 on 2022/12/31.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color : [Double]
    
    var red: Double {
        return color[0]
    }
    var green: Double {
        return color[1]
    }
    var blue: Double {
        return color[2]
    }
    
    var fomatteredPrice: String {
        return "$\(price)"
    }
}
