//
//  SleepS.swift
//  GamesScreenTechnovation
//
//  Created by mihika on 4/13/20.
//  Copyright © 2020 mihika. All rights reserved.
//

import SwiftUI

struct SleepS: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.orange
    }
    
    @State var selected = 3
    
    var body: some View {
        TabView(selection: $selected) {
            AppsView().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar0)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar0)")
            }).tag(0)
            
            BlogView().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar1)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar1)")
            }).tag(1)
            
            AboutUsView().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar2)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar2)")
            }).tag(2)
            
            
        }.accentColor(Color.orange)
    }
}

struct SleepS_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

