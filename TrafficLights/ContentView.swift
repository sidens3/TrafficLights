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

                    Button(action: {
                        print("NEXT")
                    }) {
                        Text("Next")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .frame(width: UIScreen.main.bounds.width / 2, height: 50, alignment: .center)
                    .overlay(RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.white, lineWidth: 6))
                    .background(Color.blue)
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
