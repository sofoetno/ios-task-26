//
//  TipsViewModel.swift
//  TravelApp
//
//  Created by Sofo Machurishvili on 14.12.23.
//

import SwiftUI

class TipsViewModel: ObservableObject {
    @Published var tips: [TipsModel] = []
    
    init() {
        tips.append(contentsOf: [
            TipsModel(tip: "In maldives Many all-inclusive resorts offer guests a chance to give an additional ‘thank you’ by tipping extra for particularly excellent service."),
            TipsModel(tip: "Don’t Pre-Book Your Acropolis Visit: If you are visiting Athens for the first time you are going to the Acropolis, home to Parthenon, one of the world’s most famous monuments."),
            TipsModel(tip: "In Santorini Watch the sunrise from Oia Castle"),
            TipsModel(tip: "Bangkok’s weekend market, the largest such market in the world, is an ideal place to buy anything and everything. It has over 15,000 stalls, making it the best place to get gifts, find knockoffs, barter, and eat some good food. It’s open on Saturday and Sunday, 9am-6pm."),
            TipsModel(tip: "Bangkok has tons of shopping centers (they’re super popular here and sell everything). Make sure you check out Siam Paragon (for designer clothes), Terminal 21 (to see the stunning internationally themed decor), Platinum (for cheap, trendy clothes), Pantip (for cheap electronics), and MBK (for cheap knockoffs)."),
            TipsModel(tip: "Book your Vatican Tour Online"),
            TipsModel(tip: "In Vatican Tuesday to Friday are the best days to visit"),
            TipsModel(tip: " In Athens if you need a taxi, download the ‘Free now’ Taxi app (like uber). If you do take a taxi without using the app, keep in mind that the driver will always charge you extra for luggage, service, etc. "),
            TipsModel(tip: "The best time to visit Greece, generally, is from mid-April to October. The same applies to Athens."),
            TipsModel(tip: "In Athens For some high-end shopping, head over to Kolonaki. This chic neighborhood is home to designer boutiques as well as department stores like Tsakiris Mallas. ")
            
        ])
        
    }

    
    func randomTip() -> TipsModel {
        tips.randomElement()!
    }
}
