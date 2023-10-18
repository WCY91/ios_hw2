//
//  TravelApp.swift
//  hw_2
//
//  Created by user05 on 2023/10/18.
//

import Foundation
import SwiftUI

struct TravelApp: View {
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

            MyTabView()
                .tabItem {
                    Label("我的", systemImage: "person")
                }
        }
    }
}
