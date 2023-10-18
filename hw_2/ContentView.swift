//
//  ContentView.swift
//  hw_2
//
//  Created by user05 on 2023/10/18.
//

import SwiftUI
import AVKit
struct ContentView: View {
    var body: some View {
            TabView {
                AttractionsView()
                    .tabItem {
                        Label("景點", systemImage: "photo")
                    }

                FoodsView()
                    .tabItem {
                        Label("美食", systemImage: "fork.knife")
                    }

                ActivitiesView()
                    .tabItem {
                        Label("活動", systemImage: "calendar")
                    }
                
            }
        }
}

#Preview {
    ContentView()
}


