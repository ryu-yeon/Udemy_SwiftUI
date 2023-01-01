//
//  CategoryModel.swift
//  TouchDown
//
//  Created by 유연탁 on 2022/12/31.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
