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
    var trafficState: TrafficState {
        didSet {
            switch trafficState {
                
            case .disable:
                redCircle.trafficCircleState = .disable
                yellowCircle.trafficCircleState = .disable
                greenCircle.trafficCircleState = .disable
            case .activeRed:
                redCircle.trafficCircleState = .enable
                yellowCircle.trafficCircleState = .disable
                greenCircle.trafficCircleState = .disable
            case .activeYellow:
                redCircle.trafficCircleState = .disable
                yellowCircle.trafficCircleState = .enable
                greenCircle.trafficCircleState = .disable
            case .activeGreen:
                redCircle.trafficCircleState = .disable
                yellowCircle.trafficCircleState = .disable
                greenCircle.trafficCircleState = .enable
            }
        }
    }
    
    var redCircle = TrafficCircle(color: .red, trafficCircleState: .disable)
    var yellowCircle = TrafficCircle(color: .yellow, trafficCircleState: .disable)
    var greenCircle = TrafficCircle(color: .green, trafficCircleState: .disable)
    
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

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(trafficState: .disable)
    }
}
