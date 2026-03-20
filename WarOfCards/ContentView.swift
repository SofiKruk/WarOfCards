//
//  ContentView.swift
//  WarOfCards
//
//  Created by Софи on 15.03.2026.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card13"
    @State var cpuCard = "card10"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 200, height: 200)
                Spacer()
                    .frame(width: 30, height: 40)
                HStack{
                    Image(playerCard)
                        .resizable()
                        .frame(width: 130, height: 210)
                    Spacer()
                        .frame(width: 30, height: 210)
                    Image(cpuCard)
                        .resizable()
                        .frame(width: 130, height: 210)
                }
                Spacer()
                    .frame(width: 30, height: 30)
                
                Button {
                    dealCards()
                    
                } label: {
                    Image("button")
                }
                HStack{
                    Text("Player")
                        .colorInvert()
                    Spacer()
                        .frame(width: 101, height: 50)
                    Text("CPU")
                        .colorInvert()
                }
                HStack{
                    Text(String(playerScore))
                        .font(Font.largeTitle)
                        .colorInvert()
                    Spacer()
                        .frame(width: 125, height: 0)
                    Text(String(cpuScore))
                        .font(Font.largeTitle)
                        .colorInvert()
                }
            }
        }
        .padding()
    }
    
    func dealCards() {
        let playerValue = Int.random(in: 2...14)
        let cpuValue = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerValue)
        cpuCard = "card" + String(cpuValue)
        
        if playerValue > cpuValue {
            playerScore += 1
        } else if cpuValue > playerValue{
            cpuScore += 1
        } else {
            playerScore += 1
            cpuScore += 1
        }
    }
}
#Preview {
    ContentView()
}

