//
//  TrvavelView.swift
//  TravelApp
//
//  Created by Sofo Machurishvili on 13.12.23.
//

import SwiftUI

struct TravelView: View {
    
    @Binding var travel: TravelModel
    
    var body: some View {
       
        HStack(spacing: 20) {
            Image(travel.imageName)
                .resizable()
                .frame(width: 200, height: 200)
                .cornerRadius(12)
            
            VStack(spacing: 10){
                Text(travel.destination)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(.brown)
                
                Text(travel.description)
                    .lineLimit(3)
                    .foregroundStyle(.brown)
                    .font(.caption)
                    .multilineTextAlignment(.leading)
            }
        }
        .padding(.horizontal, 10)
        

    }
}

#Preview {
    TravelView(travel: .constant(TravelModel(imageName: "vatican", destination: "Vatican", description: "The Vatican City is the headquarters of the Roman Catholic Church and its government, the Holy See. Its head of state is the Pope which is, religiously speaking, the Bishop of Rome and head of the Roman Catholic Church. The current Pope, Pope Francis, former cardinal Jorge Mario Bergoglio, was elected on 13 March 2013.")))
}
