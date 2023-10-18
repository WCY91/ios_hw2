//
//  Food.swift
//  hw_2
//
//  Created by user05 on 2023/10/18.
//

import Foundation
import CoreLocation

struct Food: Identifiable {
    var id: Int
    var name: String
    var description: String
    var images: [String]
    var location: CLLocationCoordinate2D
    var phoneNumber: String
    var url : String
}
