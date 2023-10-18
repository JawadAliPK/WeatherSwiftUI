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
