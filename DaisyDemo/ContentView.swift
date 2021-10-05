//
//  ContentView.swift
//  DaisyDemo
//
//  Created by Ehsan Zilaei on 2021-09-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.white, Color("LightGray")]),
                startPoint: UnitPoint(x: 0.2, y: 0.2),
                endPoint: .bottomTrailing
            )
            
            VStack(spacing: 0) {
                HomeView()
                HStack {
                    Image(systemName: "mic.circle.fill").foregroundColor(.gray)
                        .font(.largeTitle)
                }
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 100,
                    maxHeight: 100,
                    alignment: .center
                )
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
