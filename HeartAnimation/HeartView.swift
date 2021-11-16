//
//  HeartView.swift
//  HeartAnimation
//
//  Created by Анатолий Миронов on 16.11.2021.
//

import SwiftUI

struct HeartView: View {
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            Path { path in
                path.move(to: CGPoint(x: size / 2, y: size * 0.35))
                path.addQuadCurve(
                    to: CGPoint(x: size / 2, y: size * 0.9),
                    control: CGPoint(x: size * 1.25, y: 0)
                )
                path.addQuadCurve(
                    to: CGPoint(x: size / 2, y: size * 0.35),
                    control: CGPoint(x: -size * 0.25, y: 0)
                )
            }
        }
    }
}

struct HeartView_Previews: PreviewProvider {
    static var previews: some View {
        HeartView()
            .frame(width: 200, height: 200)
    }
}
