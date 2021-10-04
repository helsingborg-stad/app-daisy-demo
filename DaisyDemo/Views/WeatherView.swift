//
//  WeatherView.swift
//  DaisyDemo
//
//  Created by Jonatan Hanson on 2021-10-01.
//

import SwiftUI
import Combine
import Weather

struct WeatherDetailView : View {
    var weatherData: WeatherData?
    
    var body: some View {
        GeometryReader { proxy in
            let w = proxy.size.width
            let f = w * 0.1
            VStack {
                Text(weatherData?.symbol.emoji ?? "-").font(.system(size: w * 0.5))
                VStack(alignment: .trailing) {
                    HStack(alignment:.firstTextBaseline) {
                        Text("\(Int(weatherData?.airTemperatureFeelsLike ?? 0))°")
                        Text("t").font(.system(size: f)).opacity(0.5)
                    }
                    HStack(alignment:.firstTextBaseline) {
                        Text("\(weatherData?.relativeHumidity ?? 0)%")
                        Text("r").font(.system(size: f)).opacity(0.5)
                    }
                }.font(.system(size: f * 0.9))
            }
            .frame(maxWidth:.infinity,maxHeight:.infinity).padding()
        }
    }
}

struct WeatherView: View {
    let weather = Weather(service:SMHI(),coordinates: .init(latitude: 56.046411, longitude: 12.694454))
    @State var weatherData: WeatherData? = nil
    
    var body: some View {
        VStack {
            Text("Weather").font(.title2)
            WeatherDetailView(weatherData: weatherData)
        }
        .onReceive(weather.closest()) { w in
            self.weatherData = w
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
