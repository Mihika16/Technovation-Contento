//
//  memoryScreen.swift
//  GamesScreenTechnovation
//
//  Created by mihika on 3/19/20.
//  Copyright © 2020 mihika. All rights reserved.
//

import SwiftUI
struct memoryScreen: View {
    
    @State var isCenter = true
    @State var isCenter2 = true
    
    var body: some View {
        NavigationView{
            
        ZStack{
            Text("Calmtento").font(.system(size: 60)).fontWeight(.light).padding(.bottom, 700)
            
            Circle()
                .frame(width: 150, height:150)
                .foregroundColor(Color.orange.opacity(0.5))
                .offset(x: isCenter ? 0 : 50)
                .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360)).padding(.bottom, 200)
            
            Circle()
            .frame(width: 150, height:150)
            .foregroundColor(Color.orange.opacity(0.5))
            .offset(x: isCenter ? 0 : -50)
                .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360)).padding(.bottom, 200)
            
            Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(Color.orange.opacity(0.5))
            .offset(y: isCenter ? 0 : 50)
            .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360)).padding(.bottom, 200)
            
            Circle()
            .frame(width: 150, height:150)
            .foregroundColor(Color.orange.opacity(0.5))
            .offset(y: isCenter ? 0 : -50)
            .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360)).padding(.bottom, 200)
            
            VStack{
                Spacer()
                NavigationLink(destination: SoundsCalmtento()) {
                        Text("Sounds").font(.title)
                            .fontWeight(.semibold)
                            .frame(width: 275.0, height: 60.0)
                            .background(Color.orange.opacity(0.5)).cornerRadius(20).padding(.bottom,40).foregroundColor(Color.white)
                }
                        
            NavigationLink(destination: SleepS()) {
                
                Text("Activites").fontWeight(.semibold).frame(width:275, height: 60).background(Color.orange.opacity(0.5)).cornerRadius(20).font(.title).padding(.bottom, 100).foregroundColor(Color.white)
            }
            
            

        }
        
        .onAppear() {
            let animation = Animation.linear(duration: 3.5)
            withAnimation(animation.repeatForever(autoreverses: true)) {
                self.isCenter = false
                
            }
            
            withAnimation(animation.repeatForever(autoreverses: true)) {
                self.isCenter2 = false
            }
        }
        
    }
}
}
}
struct memoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        memoryScreen()
    }
}
