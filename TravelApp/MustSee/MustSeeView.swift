//
//  MustSeeView.swift
//  TravelApp
//
//  Created by Sofo Machurishvili on 14.12.23.
//

import SwiftUI

struct MustSeeView: View {
    
var mustSeeViewModel: MustSeeViewModel
    
    var body: some View {
        

            ZStack {
                
                Image("mustSee")
                    .resizable()
                    .frame(width: 400, height: 300)
                    .cornerRadius(10)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                VStack {
                    
                    NavigationLink {
                        ContentView()
                    } label: {
                        Text("Home Page")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 10)
                    }
                    
                }
                .frame(width: 200, height: 150)
                .border(Color.white, width: 3)


                
            }

            
            ScrollView {
                ForEach(mustSeeViewModel.mustSeeList, id: \.self) {mustSee in
                    VStack(alignment: .leading){
                        HStack(spacing: 20){
                            Image(mustSee.imageName)
                                .resizable()
                                .frame(width: 150, height: 100)
                                .cornerRadius(12)
                            Spacer()
                            
                            HStack {
                                Text(mustSee.name)
                                    .font(.callout)
                                    .fontWeight(.medium)
                                    .foregroundStyle(.brown)
                            }
                            
                            
                        }
            }
                    .padding(.horizontal, 20)

      
                }
                
            }

            
            
        
       
    }
}

#Preview {
    MustSeeView(mustSeeViewModel: MustSeeViewModel(mustSeeList: [
        MustSeeModel(imageName: "beach2", name: "Shining beach"),
        MustSeeModel(imageName: "beach2", name: "Shining beach")
    ]))
}
