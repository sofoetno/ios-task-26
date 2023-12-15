//
//  DestinationView.swift
//  TravelApp
//
//  Created by Sofo Machurishvili on 13.12.23.
//

import SwiftUI

struct DestinationView: View {
    var destinationViewModel: DestonationViewModel
    
    
    var body: some View {
        
        ZStack {
            
            Image(destinationViewModel.travelModel.imageName)
                .shadow(color: .white, radius: 10)

            
            VStack {
                ZStack {
                    HStack(spacing: 10) {
                        NavigationLink {
                            TransportView(transportViewModel: TransportViewModel(transportList: destinationViewModel.travelModel.transports))
                        } label: {
                            HStack {
                                Image(systemName: "bus")
                                    .foregroundColor(.gray)
                                    .font(.title2)
                                
                                Text("Transport")
                                    .foregroundStyle(.gray)
                            }
                            .frame(width: 120, height: 40)
                            .padding(.horizontal, 2)
                            .border(Color.gray, width: 2)
                            .cornerRadius(6)
                        }
                        
                        NavigationLink {
                            MustSeeView(mustSeeViewModel: MustSeeViewModel(mustSeeList: destinationViewModel.travelModel.mustSee))
                        } label: {
                            HStack {
                                Image(systemName: "eye")
                                    .foregroundColor(.gray)
                                    .font(.title2)
                                
                                
                                Text("Must see")
                                    .foregroundStyle(.gray)
                            }
                            .frame(width: 120, height: 40)
                            .border(Color.gray, width: 2)
                            .cornerRadius(6)
                        }
                        
                        NavigationLink {
                            HotelView(hotelViewModel: HotelViewModel(hotelList: destinationViewModel.travelModel.hotels))
                        } label: {
                            HStack {
                                Image(systemName: "house")
                                    .foregroundColor(.gray)
                                    .font(.title2)
                                
                                
                                Text("Hotels")
                                    .foregroundStyle(.gray)
                            }
                            .frame(width: 120, height: 40)
                            .border(Color.gray, width: 2)
                            .cornerRadius(6)
                        }
                    }
                    .fontWeight(.bold)
                    .shadow(color: .white, radius: 10)
                    .offset(x: 0, y: -580)
                    
                    Text("Description")
                        .offset(CGSize(width: 00.0, height: -160.0))
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 10)
                        .frame(width: 420, height: 400)
                        .background(Color(red: 0.92, green: 0.9, blue: 0.84))
                        .background(.white)
                        .cornerRadius(50)
                    
                    ScrollView {
                        VStack {
                            Text(destinationViewModel.travelModel.description)
                                .font(.title2)
                                .fontWeight(.medium)
                                .foregroundStyle(Color(red: 0.71, green: 0.71, blue: 0.71))
                        }
                        .frame(width: 346, height: 500)
                    }
                }
            }
            .padding(.top, 550)
            
        }
        .background(Color(red: 0.92, green: 0.9, blue: 0.84))
    }
}

#Preview {
    DestinationView(destinationViewModel: DestonationViewModel(travelModel: TravelModel(imageName: "vatican", destination: "Vatican", description: "The Vatican City is the headquarters of the Roman Catholic Church and its government, the Holy See. Its head of state is the Pope which is, religiously speaking, the Bishop of Rome and head of the Roman Catholic Church. The current Pope, Pope Francis, former cardinal Jorge Mario Bergoglio, was elected on 13 March 2013.")))
}
