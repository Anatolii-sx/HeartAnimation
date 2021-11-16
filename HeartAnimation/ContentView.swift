//
//  ContentView.swift
//  HeartAnimation
//
//  Created by Анатолий Миронов on 16.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAward = false
    
    // Main Size of Big Heart
    private let size: CGFloat = 180
    
    var body: some View {
        
        ZStack {
            
            Color(.black)
                .ignoresSafeArea()
            
            SmallHeartView(showAward: showAward, size: size, color: .green)
                .offset(x: showAward ? 0 : 0, y: showAward ? -size * 0.625 : 0)
            SmallHeartView(showAward: showAward, size: size, color: .purple)
                .offset(x: showAward ? -size * 0.625 : 0, y: showAward ? 0 : 0)
            SmallHeartView(showAward: showAward, size: size, color: .yellow)
                .offset(x: showAward ? size * 0.625 : 0, y: showAward ? 0 : 0)
            SmallHeartView(showAward: showAward, size: size, color: .orange)
                .offset(x: showAward ? 0 : 0, y: showAward ? size * 0.625 : 0)
            
            SmallHeartView(showAward: showAward, size: size, color: .red)
                .offset(x: showAward ? -size * 0.45 : 0, y: showAward ? -size * 0.45 : 0)
            SmallHeartView(showAward: showAward, size: size, color: .blue)
                .offset(x: showAward ? size * 0.45 : 0, y: showAward ? -size * 0.45 : 0)
            SmallHeartView(showAward: showAward, size: size, color: .purple)
                .offset(x: showAward ? size * 0.45 : 0, y: showAward ? size * 0.45 : 0)
            SmallHeartView(showAward: showAward, size: size, color: .green)
                .offset(x: showAward ? -size * 0.45 : 0, y: showAward ? size * 0.45 : 0)

            ZStack {
                HeartView()
                    .frame(width: size, height: size)
                    .foregroundColor(.yellow)
                
                HeartView()
                    .frame(width: size, height: size)
                    .scaleEffect(showAward ? 1 : 0)
                    .foregroundColor(showAward ? .red : .white)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            showAward.toggle()
                        }
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
