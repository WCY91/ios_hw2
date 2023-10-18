//
//  ActivityDetailView.swift
//  hw_2
//
//  Created by user05 on 2023/10/18.
//

import Foundation
import SwiftUI

struct ActivityDetailView: View {
    var activity: Activity

    var body: some View {
        VStack {
            Image(activity.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(activity.date)
            Text(activity.description)
            
        }
        .navigationBarTitle(activity.name)
    }
}
