//
//  DashboardView.swift
//  Marvally
//
//  Created by MacBook on 29/06/22.
//

import SwiftUI

struct DashboardView: View {
    @State private var searchText = ""
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            LazyVStack(alignment: .leading) {
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
                    
                    Image(uiImage: UIImage(named: "Profile Picture")!)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 44, height: 44)
                        .clipShape(Circle())
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
                
                PopularEventCard()
                    .padding(.bottom)
                
                EventYouMightLikeCollection()
                    .padding(.bottom)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color(hexString: "4D4D4D"))
                    .padding(.bottom, 8)
                
                HeroesLeaderboardRow()
            }
            .padding(.horizontal, 32)
            .padding(.vertical)
        }
        .background(Color(hexString: "06060B"))
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
