//
//  ContentView.swift
//  AnimationProject
//
//  Created by Karin Prater on 23.07.20.
//  Copyright © 2020 Karin Prater. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            IntroAnimation()
                .font(.title)
                .tabItem {
                    VStack {
                        Image("first")
                        Text("Introduction")
                    }
                }
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Second")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
