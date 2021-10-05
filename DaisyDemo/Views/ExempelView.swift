//
//  ExempelView.swift
//  DaisyDemo
//
//  Created by Ehsan Zilaei on 2021-10-04.
//

import SwiftUI

struct ExempelView: View {
    var body: some View {
        VStack {
            Text("Exempel")
        }
        .navigationTitle("Exempel")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ExempelView_Previews: PreviewProvider {
    static var previews: some View {
        ExempelView()
    }
}
