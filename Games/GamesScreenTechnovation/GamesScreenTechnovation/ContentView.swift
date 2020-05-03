//
//  ContentView.swift
//  GamesScreenTechnovation
//
//  Created by mihika on 3/19/20.
//  Copyright © 2020 mihika. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
        VStack {

            Text("RECREATION")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)

                .padding()
                
            NavigationLink(destination: memoryScreen()) {
                            Text("Calmtento")
                                .font(.title)
                                .foregroundColor(Color.white)
                                
                                .fontWeight(.light)
                                .frame(width: 140, height: 140).background(
                                    Color.orange.opacity(0.6)
                                        
                                        .cornerRadius(45)
                                )
                            }
            HStack {
                NavigationLink(destination: FlagGame()) {
                Text("Flag game")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .frame(width: 120, height: 120) .background(HStack {
                        Color.orange.opacity(0.8)
                    })
                    .cornerRadius(45)
                    .padding()
                }
                NavigationLink(destination: WarGame()) {
               
                        Text("War game")
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                        .frame(width: 180, height: 180) .background(HStack {
                            Color.orange.opacity(0.9)
                        })
                        .cornerRadius(65)
                        .padding()
                    }
            }
            NavigationLink(destination: WordGame()) {
            
                Text("Word game")
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundColor(Color.white)
                .frame(width: 230, height: 230) .background(Color.orange.opacity(0.6))
                .cornerRadius(80)
                .padding()
            }
            
            
        }
        .padding(.top)
        .background( Image("Background")
            .resizable()
        .       frame(width: 500, height: 1000))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

