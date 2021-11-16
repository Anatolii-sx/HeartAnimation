//
//  SmallHeartView.swift
//  HeartAnimation
//
//  Created by Анатолий Миронов on 17.11.2021.
//

import SwiftUI

struct SmallHeartView: View {
    let showAward: Bool
    let size: CGFloat
    let color: Color
    
    var body: some View {
        HeartView()
            .frame(width: size * 0.25, height: size * 0.25)
            .foregroundColor(color)
            .opacity(showAward ? 1 : 0)
    }
}

struct SmallHeartView_Previews: PreviewProvider {
    static var previews: some View {
        SmallHeartView(showAward: true, size: 100, color: .green)
    }
}
