//
//  WeatherView.swift
//  Weather
//
//  Created by jawad ali on 18/10/2023.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack {
            // MARK: Background
            Color.background
                .ignoresSafeArea()
            
            //MARK: Weather Widgets
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(Forecast.cities) { forecast in
                        WeatherWidget(forecast: forecast)
                    }
                }
            }
            .safeAreaInset(edge: .top) {
                EmptyView()
                    .frame(height: 110)
            }
        }
        .overlay {
            //MARK: Navigation Bar
            NavigationBar()
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    WeatherView()
        .preferredColorScheme(.dark)
}
