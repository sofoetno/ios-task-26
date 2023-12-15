//
//  TravelViewModel.swift
//  TravelApp
//
//  Created by Sofo Machurishvili on 13.12.23.
//

import SwiftUI

class TravelViewModel: ObservableObject {
    @Published var travelList: [TravelModel] = []
    
    init() {
        travelList.append(contentsOf: [
            TravelModel(imageName: "maldives", destination: "Maldives", description: "The Maldives is a republic lies south-west of the Indian sub-continent. It is made up of a chain of nearly 1,200 islands, most of them uninhabited. None of the coral islands stand more than 1.8 metres (six feet) above sea level, making the country vulnerable to any rise in sea levels associated with global warming.",
                        mustSee: [
                            MustSeeModel(imageName: "diving", name: "Mantas and diving"),
                            MustSeeModel(imageName: "beach", name: "beautiful beaches"),
                            MustSeeModel(imageName: "beach2", name: "Shining beach")
                        ], hotels: [
                            HotelModel(imageName: "maldives1", name: "Soneva Jani"),
                            HotelModel(imageName: "maldives2", name: "Joali"),
                            HotelModel(imageName: "maldives3", name: "Six Senses Laamu"),
                            HotelModel(imageName: "maldives4", name: "Kudadoo")
                            
                        ]),
            
            TravelModel(imageName: "bangkok", destination: "Bankok", description: "Bangkok, Thai Krung Thep, City (pop., 2000: metro. area, 6,355,144), capital of Thailand. Lying 25 mi (40 km) above the mouth of the Chao Phraya River, it is the country's major port and also its cultural, financial, and educational centre. It was established as the capital of Siam (Thailand) in 1782 by King Rama I.",
                        transports: [
                TransportModel(imageName: "bus.fill", type: .bus, price: 1, condition: "Day ticket"),
                TransportModel(imageName: "train.side.front.car", type: .metro, price: 2, condition: "Day ticket"),
                TransportModel(imageName: "car.rear", type: .taxi, price: 1, condition: "Per 1 km.")
                
            ], mustSee: [
                MustSeeModel(imageName: "grandPlace", name: "Grand Palace and Wat Prakeaw"),
                MustSeeModel(imageName: "street", name: "Chinatown (Yaowarat)"),
                MustSeeModel(imageName: "skyBar", name: "Sky Bar Bangkok"),
                MustSeeModel(imageName: "temple", name: "Wat Arun (The Temple of Dawn)")
            ], hotels: [
                HotelModel(imageName: "bangkok1", name: "Casa Vimaya Riverside"),
                HotelModel(imageName: "bangkok2", name: "AVANI Riverside Bangkok Hotel"),
                HotelModel(imageName: "bangkok3", name: "Inn A Day Boutique Hotel")
            ]),
            
            TravelModel(imageName: "vatican", destination: "Vatican", description: "The Vatican City is the headquarters of the Roman Catholic Church and its government, the Holy See. Its head of state is the Pope which is, religiously speaking, the Bishop of Rome and head of the Roman Catholic Church. The current Pope, Pope Francis, former cardinal Jorge Mario Bergoglio, was elected on 13 March 2013.",
                        transports: [
                TransportModel(imageName: "bus.fill", type: .bus, price: 2, condition: "Day ticket")
            ], mustSee: [
                MustSeeModel(imageName: "SistineChapel", name: "Visit the Sistine Chapel"),
                MustSeeModel(imageName: "castel", name: "Check out Castel Sant’Angelo"),
                MustSeeModel(imageName: "museums", name: "Make (plenty of) time for the Vatican Museums"),
                MustSeeModel(imageName: "garden", name: "Wander the Vatican Gardens")
            ], hotels: [
                HotelModel(imageName: "vatican1", name: "Villa Agrippina Gran Meliá"),
                HotelModel(imageName: "vatican2", name: "Mama Shelter Roma"),
                HotelModel(imageName: "vatican3", name: "Villa Laetitia"),
                HotelModel(imageName: "vatican4", name: "Residenza Paolo VI Hotel")
            ]) ,
            
            TravelModel(imageName: "athen", destination: "Athens", description: "Athens dominates and is the capital of the Attica region and is one of the world's oldest cities, with its recorded history spanning over 3,400 years, and its earliest human presence beginning somewhere between the 11th and 7th millennia BC.",
                        transports: [
                TransportModel(imageName: "bus.fill", type: .bus, price: 8, condition: "Day ticket"),
                TransportModel(imageName: "train.side.front.car", type: .metro, price: 5, condition: "Day ticket"),
                TransportModel(imageName: "car.rear", type: .taxi, price: 2, condition: "Per 1 km.")
                
            ], mustSee: [
                MustSeeModel(imageName: "acropolis", name: "The Acropolis"),
                MustSeeModel(imageName: "athenMuseum", name: "National Archeological Museum"),
                MustSeeModel(imageName: "athenBar", name: "Take in the view from a rooftop bar"),
                MustSeeModel(imageName: "athenhill", name: "Areopagus Hill")
            ], hotels: [
                HotelModel(imageName: "athens1", name: "The Foundry Suites, Psirri"),
                HotelModel(imageName: "athens2", name: "The Margi, Vouliagmeni"),
                HotelModel(imageName: "athens3", name: "18 Micon Street, Psirri"),
                HotelModel(imageName: "athens4", name: "Shila Athens, Kolonaki")
            ]),
            
            TravelModel(imageName: "santorini", destination: "Santorini", description: "Santorini is a fantastic Cycladic island in the southern Aegean Sea with astonishing volcanic scenery and world-famous sunset vistas. It comprises a luxury-oriented destination that is perfect for couples, with rich viticulture and history to dive into." ,
                        transports: [
                TransportModel(imageName: "bus.fill", type: .bus, price: 2, condition: "Day ticket")
            ], mustSee: [
                MustSeeModel(imageName: "Pyrgos", name: "Pyrgos"),
                MustSeeModel(imageName: "oia", name: "Oia"),
                MustSeeModel(imageName: "thera", name: "The ancient city of Thera")
                
            ], hotels: [
                HotelModel(imageName: "santorini1", name: "Perivolas"),
                HotelModel(imageName: "Santorini2", name: "Vora"),
                HotelModel(imageName: "santorini3", name: "Iconic Santorini"),
                HotelModel(imageName: "santorini4", name: "Andronis Luxury Suites")
            ])
        ])
    }
}
