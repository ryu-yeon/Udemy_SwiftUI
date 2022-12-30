//
//  AnimalModel.swift
//  Africa
//
//  Created by 유연탁 on 2022/12/29.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]    
}
