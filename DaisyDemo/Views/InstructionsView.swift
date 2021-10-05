//
//  InstructionsView.swift
//  DaisyDemo
//
//  Created by Jonatan Hanson on 2021-10-05.
//

import SwiftUI

struct InstructionsView: View {
    var body: some View {
        VStack {
            Text("👋")
                .font(.largeTitle)
                .padding()
            Text("Instructions")
                .font(.title3)
                .bold()
                .padding(5.0)
            
            Text("1. Click on the microphone icon at the bottom")
                .padding(5.0)
            Text("2. Say for example \"how's the weather?\"")
                .padding(5.0)
        }
    }
}

struct InstructionsView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionsView()
    }
}
