//
//  AttractionsView.swift
//  hw_2
//
//  Created by user05 on 2023/10/18.
//

import Foundation
import SwiftUI
struct AttractionsView: View {
    let attractions = [
        Attraction(id: 1, name: "三和夜市", description: "這是三重著名的夜市", image: "三和夜市"),
        Attraction(id: 2, name: "大台北都會公園", description: "這是三重大台北都會公園", image: "大台北都會公園"),
        Attraction(id: 3, name: "玫瑰公園", description: "這是三重玫瑰公園", image: "玫瑰公園"),
        Attraction(id: 4, name: "晨光橋", description: "這是三重晨光橋", image: "晨光橋"),
        Attraction(id: 5, name: "洋洋公園", description: "這是三重洋洋公園", image: "洋洋公園"),
    ]

    var body: some View {
        NavigationView {
            List(attractions) { attraction in
                NavigationLink(destination: AttractionDetailView(attraction: attraction)) {
                    Text(attraction.name)
                }
            }
            .navigationBarTitle("三重景點")
        }
        
        
        
        
    }
}
