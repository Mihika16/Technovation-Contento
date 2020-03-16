//
//  ContentView.swift
//  WordScrambleFinal
//
//  Created by mihika on 3/15/20.
//  Copyright © 2020 mihika. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Static Row 1")
            Text("Static Row 2")
            
            ForEach(0..<5) {_ in
                Text("Dynamic Row")
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
