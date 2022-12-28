//
//  PageModel.swift
//  Pinch
//
//  Created by 유연탁 on 2022/12/28.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumnailName: String {
        return "thumb-" + imageName
    }
}
