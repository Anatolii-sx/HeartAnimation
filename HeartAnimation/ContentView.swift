//
//  ContentView.swift
//  HeartAnimation
//
//  Created by Анатолий Миронов on 16.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAward = false
    
    var body: some View {
        
        ZStack {
            
            Color(.black)
                .ignoresSafeArea()
            
            
            HeartView()
                .frame(width: 10, height: 10)
                .offset(x: showAward ? 0 : 0, y: showAward ? -25 : 0)
                .foregroundColor(.green)
                .opacity(showAward ? 1 : 0)
            
            HeartView()
                .frame(width: 10, height: 10)
                .offset(x: showAward ? -25 : 0, y: showAward ? 0 : 0)
                .foregroundColor(.purple)
                .opacity(showAward ? 1 : 0)
            
            HeartView()
                .frame(width: 10, height: 10)
                .offset(x: showAward ? 25 : 0, y: showAward ? 0 : 0)
                .foregroundColor(.yellow)
                .opacity(showAward ? 1 : 0)
            
            HeartView()
                .frame(width: 10, height: 10)
                .offset(x: showAward ? 0 : 0, y: showAward ? 25 : 0)
                .foregroundColor(.blue)
                .opacity(showAward ? 1 : 0)
            
            
            
            HeartView()
                .frame(width: 10, height: 10)
                .offset(x: showAward ? -18 : 0, y: showAward ? -18 : 0)
                .foregroundColor(.red)
                .opacity(showAward ? 1 : 0)
            
            HeartView()
                .frame(width: 10, height: 10)
                .offset(x: showAward ? 18 : 0, y: showAward ? -18 : 0)
                .foregroundColor(.pink)
                .opacity(showAward ? 1 : 0)
            
            HeartView()
                .frame(width: 10, height: 10)
                .offset(x: showAward ? 18 : 0, y: showAward ? 18 : 0)
                .foregroundColor(.purple)
                .opacity(showAward ? 1 : 0)
            
            HeartView()
                .frame(width: 10, height: 10)
                .offset(x: showAward ? -18 : 0, y: showAward ? 18 : 0)
                .foregroundColor(.green)
                .opacity(showAward ? 1 : 0)
            
            ZStack {
                HeartView()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.yellow)
                
                HeartView()
                    .frame(width: 40, height: 40)
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
