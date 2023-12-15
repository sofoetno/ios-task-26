//
//  TravelModel.swift
//  TravelApp
//
//  Created by Sofo Machurishvili on 13.12.23.
//

import SwiftUI

struct TravelModel: Identifiable, Hashable {
    let id: String = UUID().uuidString
    let imageName: String
    var destination: String
    let description: String
    var transports: [TransportModel] = []
    var mustSee: [MustSeeModel] = []
    var hotels: [HotelModel] = []
}
