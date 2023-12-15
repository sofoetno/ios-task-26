//
//  HotelView.swift
//  TravelApp
//
//  Created by Sofo Machurishvili on 14.12.23.
//

import SwiftUI

struct HotelView: View {
    var hotelViewModel: HotelViewModel
    
    var body: some View {
        
        HStack {
            NavigationLink {
                ContentView()
            } label: {
                Text("Home Page")
                    .padding()
                    .font(.caption)
                    .foregroundStyle(.red)
                    .border(Color.brown, width: 8)
                    .opacity(0.8)
                    .cornerRadius(12)
            }
        }
        
        .padding()
        
        HStack {
            Image("hotel")
                .resizable()
                .frame(width: 350, height: 200)
                .cornerRadius(12)
        }
        
        .padding(.vertical, 30)

        
        ScrollView {
            ForEach(hotelViewModel.hotelList, id: \.self) { hotel in
                VStack {
                    HStack {
                        Image(hotel.imageName)
                            .resizable()
                            .frame(width: 200, height: 150)
                            .cornerRadius(12)
                        Spacer()
                        
                        HStack {
                            Text(hotel.name)
                                .font(.callout)
                                .foregroundColor(.brown)
                                .fontWeight(.medium)
                        }
                        
                    }

                }
                .padding(.horizontal, 20)
            }
            
            
        }
        .padding(.bottom, 10)
        
        
        
    }
}

#Preview {
    HotelView(hotelViewModel: HotelViewModel(hotelList: [
        HotelModel(imageName: "santorini1", name: "Santorini")
    ]))
}
