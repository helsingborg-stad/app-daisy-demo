//
//  ContentView.swift
//  DaisyDemo
//
//  Created by Ehsan Zilaei on 2021-09-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            HomeView()
            
            HStack {
                Image(systemName: "mic.circle.fill").foregroundColor(.gray)
                    .font(.largeTitle)
            }
            .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 80,
              maxHeight: 80,
              alignment: .center
            )
            .background(Color("MenuBottomColor"))
            .overlay(Rectangle().frame(width: nil, height: 1, alignment: .top).foregroundColor(Color.gray), alignment: .top)        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
