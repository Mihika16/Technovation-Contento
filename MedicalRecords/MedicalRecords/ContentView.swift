//
//  ContentView.swift
//  MedicalRecords
//
//  Created by mihika on 5/3/20.
//  Copyright © 2020 mihika. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.white.edgesIgnoringSafeArea(.all)
                NavigationLink(destination: DestinationView(isDestination: true)){
                        Text("Medical Records")
                }
            }
            
        }
        
    }
}

struct DestinationView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var isDestination = false
    
    var body: some View {
        
        
        
        ZStack{
            //This navigation view is just a formality.
            NavigationView{
                Text("")
            }
            .navigationBarTitle("this will be hidden")
            .navigationBarHidden(true)
            Color.clear.edgesIgnoringSafeArea(.all)
            VStack{
                Image("ID").shadow(radius: 20)
                    .padding(.bottom)
                HStack{
                    Text("Patient information")
                        .fontWeight(.bold) .font(.headline)
                        .foregroundColor(Color.orange)
                        .padding(.trailing, 100)
                    Text("Birth Date")
                        .font(.headline)
                        .fontWeight(.bold)
                    .foregroundColor(Color.orange)
                        .padding(.trailing, 2)
                }
                HStack{
                    Text("Sally G. Hudson")
                        .padding(.trailing, 80)
                    Text("May 17 1954 ")
                        .padding(.leading, 25)
                }//.padding()
                HStack{
                    Text("(408)255-0189")
                    .padding(.leading, 20)
                        
                        .padding(.trailing, 100)
                    Text("Weight/Height")
                        .font(.headline)
                        .fontWeight(.bold)
                    .foregroundColor(Color.orange)
                        .padding(.trailing, 14)
                }.padding()
                HStack{
                    VStack{
                    Text("2065 Launcheir Street")
                        .padding(.trailing, 60)
                    Text("Seripa, California(CA), 161").padding(.trailing, 35)
                    
                    }
                    VStack{
                    Text("135 lb")
                        .padding(.leading, 50)
                        
                        Text("157 cm").padding(.leading, 45)
                    }
                }
                Text("------------------------------------------------------")
                    .padding(.top)
                HStack{
                    Text("Doctor information")
                        .fontWeight(.bold) .font(.headline)
                        .foregroundColor(Color.orange)
                        .padding(.trailing, 100)
                    Text("Last Visit")
                        .font(.headline)
                        .fontWeight(.bold)
                    .foregroundColor(Color.orange)
                        .padding(.trailing, 2)
                }
                HStack{
                    Text("Amanda Nyugen")
                        .padding(.trailing, 80)
                    Text("July 18 2019 ")
                        .padding(.leading, 25)
                }//.padding()
                HStack{
                    Text("(408)793-5182")
                    .padding(.trailing, 30)
                        
                        .padding(.trailing, 100)
                    Text("Next Visit")
                        .font(.headline)
                        .fontWeight(.bold)
                    .foregroundColor(Color.orange)
                        .padding(.trailing, 14)
                }.padding()
                HStack{
                    VStack{
                    Text("Oaksem Hospital")
                        .padding(.trailing, 60)
                    Text("Seripa, California(CA), 208").padding(.trailing, 1)
                    
                    }
                    VStack{
                    Text("July 25 2020")
                        .padding(.leading, 50)
                        
                        Text("10:00 AM ").padding(.leading, 45)
                    }
                }
                
                
            }
            
            
            CustomNavigationView(isDestination:isDestination)
            
        
        }
        
            }
}

struct CustomNavigationView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    var isDestination = false
    
    var title = "Medical Records"
    var buttons:[Button<Image>] = [
        Button(action: {}) {
            Image(systemName: "ellipsis.circle.fill")
        },
        Button(action: {}) {
            Image(systemName: "square.and.pencil")
        }
    ]
    
    
    var body: some View {
        VStack{
            HStack{
                
                if isDestination {
                    Button(action: {self.presentationMode.wrappedValue.dismiss()}) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                            .padding(.trailing, 10)
                    }
                }
                
                Text(title)
                    .font(.system(size: 35, weight: .bold))
                Spacer()
                ForEach(0..<buttons.count){ i in
                    self.buttons[i]
                        .foregroundColor(.gray)
                        .padding(.trailing, 10)
                }
                
            }.padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
