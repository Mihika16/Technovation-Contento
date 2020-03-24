//
//  ContentView.swift
//  Animationone
//
//  Created by mihika on 3/21/20.
//  Copyright © 2020 mihika. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isCenter = true
    @State var isCenter2 = true

    
    var body: some View {
        
        ZStack{
            VStack{
                
                Text("Contento")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .foregroundColor(Color.orange)
                    .padding(.bottom, 270)
                
                
            }
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(Color.orange.opacity(0.2))
                .offset(x: isCenter ? 0 : 50)
                .rotationEffect(Angle(degrees: isCenter2 ? 0 :360))
            
            Circle()
                           .frame(width: 200, height: 200)
                           .foregroundColor(Color.red.opacity(0.2))
                           .offset(y: isCenter ? 0 : -50)
                           .rotationEffect(Angle(degrees: isCenter2 ? 0 :360))
            
            Circle()
                           .frame(width: 200, height: 200)
                           .foregroundColor(Color.orange.opacity(0.2))
                           .offset(x: isCenter ? 0 : 50)
                           .rotationEffect(Angle(degrees: isCenter2 ? 0 :360))
            
            Circle()
                           .frame(width: 200, height: 200)
                           .foregroundColor(Color.red.opacity(0.2))
                           .offset(y: isCenter ? 0 : -50)
                           .rotationEffect(Angle(degrees: isCenter2 ? 0 :360))
            
            
            
            
        }
        //.background(Color.black)
        .onAppear() {
            let animation = Animation.linear(duration: 3)
            withAnimation(animation.repeatForever(autoreverses: true)) {
                self.isCenter = false
            }
            
            withAnimation(animation.repeatForever(autoreverses: true)) {
                self.isCenter2 = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
