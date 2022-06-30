//
//  ContentView.swift
//  Marvally
//
//  Created by MacBook on 29/06/22.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Welcome")
                            .font(StyleFont.heading1)
                            .foregroundColor(.white)
                        
                        Text("Ashley Ree")
                            .font(Font(StyleFont.largeTitle))
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 44))
                        .foregroundColor(.white)
                }
                .padding(.bottom)
                
                SearchBar(textFieldPlaceholder: "Search anything...", text: $searchText)
                    .padding(.bottom)
                
                DashboardCard()
                    .padding(.bottom)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color(hexString: "4D4D4D"))
                    .padding(.bottom, 8)
                
                Text("Popular Event")
                    .font(Font(StyleFont.largeTitle))
                    .foregroundColor(.white)
                
                PopularEventCard()
                    .padding(.bottom)
                
                Text("Events you might like")
                    .font(StyleFont.mediumTitle)
                    .foregroundColor(.white)
                
                EventYouMightLikeCollection()
                    .padding(.bottom)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color(hexString: "4D4D4D"))
                    .padding(.bottom)
            }
            .padding(.horizontal, 32)
            .padding(.vertical)
        }
        .background(Color(hexString: "06060B"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
