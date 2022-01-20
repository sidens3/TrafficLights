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

enum TrafficState: CaseIterable {
    case disable
    case activeRed
    case activeYellow
    case activeGreen
}

struct TrafficLightView: View {
    var state: TrafficState {
        didSet {
            switch state {
                
            case .disable:
                redCircle.state = .disable
                yellowCircle.state = .disable
                greenCircle.state = .disable
            case .activeRed:
                redCircle.state = .enable
                yellowCircle.state = .disable
                greenCircle.state = .disable
            case .activeYellow:
                redCircle.state = .disable
                yellowCircle.state = .enable
                greenCircle.state = .disable
            case .activeGreen:
                redCircle.state = .disable
                yellowCircle.state = .disable
                greenCircle.state = .enable
            }
        }
    }
    
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

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(state: .disable)
    }
}
