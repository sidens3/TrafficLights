//
//  ContentView.swift
//  TrafficLights
//
//  Created by Михаил Зиновьев on 20.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            background
            VStack {
                TrafficLightView(state: .disable)
                Spacer()
            }
        }
    }
    
    private var background: some View {
        Color(uiColor: .darkGray)
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
