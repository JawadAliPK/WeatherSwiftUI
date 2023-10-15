//
//  Tabbar.swift
//  Weather
//
//  Created by jawad ali on 15/10/2023.
//

import SwiftUI

struct Tabbar: View {
    var action: () -> Void
    var body: some View {
        ZStack {
            //MARK: Arc Shape
            Arc()
                .fill(Color.tabBarBackground)
                .frame(height: 88)
                .overlay {
                    //MARK: Arc Border
                    Arc()
                        .stroke(Color.tabBarBorderr, lineWidth: 0.5)
                }
            //MARK: Tab Items
            HStack {
                // MARK: Expand Button
                Button {
                    action()
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                        .frame(width: 44, height: 44)
                }
                Spacer()
                //MARK: NAVIGATION BUTTON
                NavigationLink {
                    
                } label: {
                    Image(systemName: "list.star")
                        .frame(width: 44, height: 44)
                }
            }
            .font(.title2)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32))
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
    }
}

#Preview {
    Tabbar(action: {})
        .preferredColorScheme(.dark)
}
