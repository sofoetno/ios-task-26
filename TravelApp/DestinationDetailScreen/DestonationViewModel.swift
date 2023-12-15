//
//  DestonationViewModel.swift
//  TravelApp
//
//  Created by Sofo Machurishvili on 13.12.23.
//

import SwiftUI

class DestonationViewModel: ObservableObject {
    var travelModel: TravelModel
    
    init(travelModel: TravelModel) {
        self.travelModel = travelModel
    }
}
