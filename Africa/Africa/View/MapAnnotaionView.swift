//
//  MapAnnotaionView.swift
//  Africa
//
//  Created by 유연탁 on 2022/12/30.
//

import SwiftUI

struct MapAnnotaionView: View {
    // MARK: - PROPERTIES
    var location: NationalParkLocation
    @State private var animation: Double = 0
    
    // MARK: - BODY
    var body: some View {
        
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 48, height: 48, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
            .clipShape(Circle())
        } //: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

// MARK: - PREVIEW
struct MapAnnotaionView_Previews: PreviewProvider {
    static var locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    static var previews: some View {
        MapAnnotaionView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
