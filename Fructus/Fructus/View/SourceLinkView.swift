//
//  SourceLinkView.swift
//  Fructus
//
//  Created by 유연탁 on 2022/12/29.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

// MARK: - PREVIEW
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
