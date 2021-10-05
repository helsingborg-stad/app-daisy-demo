//
//  DemoList.swift
//  DaisyDemo
//
//  Created by Ehsan Zilaei on 2021-10-04.
//

import SwiftUI

struct DemoList: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: {ExempelView()}) {
                    Text("Exempel")
                }
            }
            .navigationTitle("Demos")
        }
    }
}

struct DemoList_Previews: PreviewProvider {
    static var previews: some View {
        DemoList()
    }
}

