//
//  ContentView.swift
//  TrafficLights
//
//  Created by Михаил Зиновьев on 20.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let cornerRadius: CGFloat = 40
    @State private var trafficState: TrafficState = .disable
    
    var body: some View {
        ZStack {
            background
            VStack {
                trafficLightView
                Spacer()
                nextButton
            }
        }
    }
    
    @State private var trafficLightView = TrafficLightView(state: .disable)
    private var background: some View {
        Color(uiColor: .darkGray)
            .ignoresSafeArea()
    }
    
    private var nextButton: some View {
        Button(action: {
            trafficLightView.state = .activeGreen
        }) {
            Text("Next")
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(width: UIScreen.main.bounds.width / 2, height: 50, alignment: .center)
        .background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        .overlay(RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(Color.white, lineWidth: 6)
            
        )
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
