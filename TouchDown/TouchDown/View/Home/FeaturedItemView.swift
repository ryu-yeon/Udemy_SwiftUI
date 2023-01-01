//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by 유연탁 on 2022/12/31.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - PROPERTIES
    var player: Player
    
    // MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - PREVIEW
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
