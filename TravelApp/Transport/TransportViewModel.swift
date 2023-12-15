//
//  TransportViewModel.swift
//  TravelApp
//
//  Created by Sofo Machurishvili on 13.12.23.
//

import SwiftUI

class TransportViewModel: ObservableObject {
    @Published var transportList: [TransportModel]
    
    init(transportList: [TransportModel]) {
        self.transportList = transportList
    }
}
