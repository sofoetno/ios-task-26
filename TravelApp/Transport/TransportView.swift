//
//  TransportView.swift
//  TravelApp
//
//  Created by Sofo Machurishvili on 13.12.23.
//

import SwiftUI

struct TransportView: View {
    var transportViewModel: TransportViewModel

    
    var body: some View {
        ZStack {
                  
            NavigationLink {
                ContentView()
            } label: {
                Text("Home Page")
                    .padding()
                    .font(.largeTitle)
                    .foregroundStyle(.red)
                    .border(Color.brown, width: 8)
                    .opacity(0.8)
                    .cornerRadius(12)
            }
            
            HStack {
                Image("transport")
                    .resizable()
                    .frame(width: 400, height: 200)
            }
            .offset(x: 0, y: -160)
            
            HStack(spacing: 10){
                if transportViewModel.transportList.count != 0 {
                    ForEach(transportViewModel.transportList, id: \.self) { transport in
                        VStack (spacing: 10) {
                                Image(systemName: transport.imageName)
                                Text("$\(transport.price)")
                                Text(String(describing: transport.type))
                                Text(transport.condition)
                        }
                        .foregroundColor(.brown)
                        .fontWeight(.medium)
                        .padding()

                    }
                } else {
                    Text("There is not available transport.")
                        .foregroundColor(.brown)
                        .fontWeight(.medium)
                        .padding()
                }
                
            }
            .offset(x: 0, y: 150)
        }
        
    }
}

#Preview {
    TransportView(transportViewModel: TransportViewModel(transportList: [TransportModel(imageName: "bus.fill", type: .bus, price: 1, condition: "Day ticket")]))
}
