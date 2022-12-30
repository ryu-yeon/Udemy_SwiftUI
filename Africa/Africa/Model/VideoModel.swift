//
//  VideoModel.swift
//  Africa
//
//  Created by 유연탁 on 2022/12/30.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        return "video-\(id)"
    }
}
