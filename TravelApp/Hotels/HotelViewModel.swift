//
//  HotelViewModel.swift
//  TravelApp
//
//  Created by Sofo Machurishvili on 14.12.23.
//

import SwiftUI

class HotelViewModel: ObservableObject {
    @Published var hotelList: [HotelModel]
    
    init(hotelList: [HotelModel]) {
        self.hotelList = hotelList
    }
}
