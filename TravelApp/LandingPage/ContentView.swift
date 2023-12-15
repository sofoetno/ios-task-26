//
//  ContentView.swift
//  TravelApp
//
//  Created by Sofo Machurishvili on 13.12.23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var travelViewModel = TravelViewModel()
    @StateObject var tipsViewModel = TipsViewModel()
    @State private var showAlert = false
    
    var body: some View {
        NavigationStack {
    
            ZStack {
                
                HStack {
                    Image("travelApp")
                        .resizable()
                        .frame(width: 340, height: 240)
                        .cornerRadius(12)
                }
                .padding(.horizontal, 10)
                
                
                HStack {
                    Button {
                        showAlert = true
                    } label: {
                        Text("Discover The wonderful world!")
                            .padding(20)
                            .multilineTextAlignment(.center)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .border(Color.brown, width: 6)
                            .cornerRadius(10)
                            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                            .padding()
                    }.alert(isPresented: $showAlert) {
                        Alert(
                            title: Text(tipsViewModel.randomTip().tip),
                            primaryButton: .destructive(
                                Text("Ok")
                               
                            ),
                            secondaryButton: .cancel()
                        )
                    }
        
                }
                
            }
            .background(Color(red: 0.92, green: 0.9, blue: 0.84))
            .ignoresSafeArea()
            .accentColor(Color(.label))
            .padding()
            
            ScrollView {
                VStack {
                    ForEach($travelViewModel.travelList, id: \.id) { travel in
                        
                        NavigationLink(value: travel.wrappedValue) {
                            TravelView(travel: travel)
                        }
                        
                    }
                    .navigationDestination(for: TravelModel.self) { travel in
                        DestinationView(destinationViewModel: DestonationViewModel(travelModel: travel))
                    }
                }
                .padding(.horizontal, 10)
            }
        }
    }
}

#Preview {
    ContentView(travelViewModel: TravelViewModel())
}
