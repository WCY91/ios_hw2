//
//  AttractionDetailView.swift
//  hw_2
//
//  Created by user05 on 2023/10/18.
//

import Foundation
import SwiftUI

struct AttractionDetailView: View {
    var attraction: Attraction
    @State private var scale: CGFloat = 1.0

    var body: some View {
        ScrollView {
            VStack {
                Image(attraction.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(scale) // 使用縮放效果
                    .onTapGesture {
                        withAnimation {
                            scale = (scale == 1.0) ? 1.5 : 1.0  // 切換縮放
                        }
                    }
                    .padding(.bottom, 20)

                Text(attraction.description)
                    .padding(.horizontal)
                    .lineSpacing(10)
            }
            .padding(.vertical)
        }
        .navigationBarTitle(attraction.name)
    }
}
