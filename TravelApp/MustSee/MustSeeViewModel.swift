//
//  MustSeeViewModel.swift
//  TravelApp
//
//  Created by Sofo Machurishvili on 14.12.23.
//

import SwiftUI

class MustSeeViewModel: ObservableObject {
    @Published var mustSeeList: [MustSeeModel]
    
    init(mustSeeList: [MustSeeModel]) {
        self.mustSeeList = mustSeeList
    }
}
