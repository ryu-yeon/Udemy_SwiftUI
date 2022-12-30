//
//  MotionAnimationView.swift
//  Africa
//
//  Created by 유연탁 on 2022/12/30.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: - PROPERTIES
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAinmating: Bool = false
    
    // MARK: - FUNCTIONS
    
    // 1. RANDOM COORDINATE
    func randomCoordinatate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    
    // 2. RANDOM SIZE
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }
    
    // 3. RANDOM SACLE
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    // 4. RANDOM SPEED
    func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }
    // 5. RANDOM DELAY
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.gray)
                    .opacity(0.15)
                    .frame(width: randomSize(), height: randomSize(), alignment: .center)
                    .scaleEffect(isAinmating ? randomScale() : 1)
                    .position(
                        x: randomCoordinatate(max: geometry.size.width),
                        y: randomCoordinatate(max: geometry.size.height)
                    )
                    .animation(Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                        .repeatForever()
                        .speed(randomSpeed())
                        .delay(1), value: isAinmating)
                    .onAppear {
                        isAinmating = true
                    }
                } //: LOOP
            } //: ZSTACK
            .drawingGroup()
        } //: GEOMETRY
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
