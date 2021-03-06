//
//  HomeView.swift
//  DaisyDemo
//
//  Created by Jonatan Hanson on 2021-10-01.
//

import SwiftUI

struct HomeView: View {
    @State private var showingInstructions = false
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [.white, Color("LightGray")]),
                    startPoint: UnitPoint(x: 0.2, y: 0.2),
                    endPoint: .bottomTrailing
                )
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 20)
                    {
                        NavigationLink(destination: { WeatherView() }) {
                            IconView(icon: "⛅️", title: "Weather")
                        }
                        NavigationLink(destination: { MealsView() }) {
                            IconView(icon: "🍔", title: "Meals")
                        }
                        NavigationLink(destination: { ExempelView() }) {
                            IconView(icon: "🏖", title: "Exempel")
                        }
                        NavigationLink(destination: { ExempelView() }) {
                            IconView(icon: "🦾", title: "Exempel")
                        }
                        NavigationLink(destination: { ExempelView() }) {
                            IconView(icon: "🐷", title: "Exempel")
                        }
                        NavigationLink(destination: { ExempelView() }) {
                            IconView(icon: "🧙‍♂️", title: "Exempel")
                        }
                    }
                    .padding()
                    .navigationTitle("Demos")
                    .toolbar {
                        Button(action: { showingInstructions.toggle() }) {
                            
                            Image(systemName: "questionmark.circle.fill")
                                .accessibilityLabel("User Profile")
                                .foregroundColor(.gray)
                        }
                    }
                    .sheet(isPresented: $showingInstructions) {
                        InstructionsView()
                    }
                }
            }
        }
    }
}

struct IconView: View {
    var icon: String
    var title: String
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.white)
                    .shadow(radius: 4)
                Text(icon)
                    .font(.system(size: 60))
            }
            .frame(width: 100.0, height: 100.0)
            
            Text(title)
                .font(.caption)
                .foregroundColor(.primary)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
            HomeView()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
