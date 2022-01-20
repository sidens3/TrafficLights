//
//  TrafficLightView.swift
//  TrafficLights
//
//  Created by Михаил Зиновьев on 20.01.2022.
//

import SwiftUI

enum TrafficCircleState {
    case enable
    case disable
}

enum TrafficState {
    case disable
    case activeRed
    case activeYellow
    case activeGreen
}

struct TrafficLightView: View {
    var state: TrafficState
    
    var redCircle = TrafficCircle(color: .red, state: .disable)
    var yellowCircle = TrafficCircle(color: .yellow, state: .disable)
    var greenCircle = TrafficCircle(color: .green, state: .disable)
    
    
    
    var body: some View {
        VStack {
            redCircle
                .padding(.bottom, 16)
            yellowCircle
                .padding(.bottom, 16)
            greenCircle
        }.padding()
    }
}

struct TrafficCircle: View {
    var color: Color
    let state: TrafficCircleState
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(color)
                .frame(width: UIScreen.main.bounds.width / 3 ,
                       height: UIScreen.main.bounds.width / 3)
                .overlay(Circle().stroke(Color.white, lineWidth: 6))
        }
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(state: .disable)
    }
}
