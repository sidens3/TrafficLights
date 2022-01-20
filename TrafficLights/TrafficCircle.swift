//
//  TrafficCircle.swift
//  TrafficLights
//
//  Created by Михаил Зиновьев on 20.01.2022.
//

import SwiftUI

struct TrafficCircle: View {
    var color: Color
    var trafficCircleState: TrafficCircleState
    
    private var opacity: Double {
        switch trafficCircleState {
        case .enable:
            return 1
        case .disable:
            return 0.5
        }
    }
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(color)
                .frame(width: UIScreen.main.bounds.width / 3 ,
                       height: UIScreen.main.bounds.width / 3)
                .overlay(Circle().stroke(Color.white, lineWidth: 6))
                .opacity(opacity)
        }
    }
}

struct TrafficCircle_Previews: PreviewProvider {
    static var previews: some View {
        TrafficCircle(color: .red, trafficCircleState: .disable)
    }
}
