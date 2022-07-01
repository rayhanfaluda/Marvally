//
//  HeroesLeaderboardRow.swift
//  Marvally
//
//  Created by MacBook on 01/07/22.
//

import SwiftUI

struct HeroesLeaderboardRow: View {
    let heroes = [["Wiccan", "Wiccan", "William Kaplan", "Earth-616", "Up", "2"],
                  ["Spider-Man Miles Morales", "Spider-Man", "Miles Morales", "Earth-1610", "Down", "5"],
                  ["Captain America", "Captain America", "Bucky Barnes", "Earth-616", "Neutral", "0"],
                  ["Ghost Rider", "Ghost Rider", "Robbie Reyes", "Earth-616", "Neutral", "0"],
                  ["Spider-Man", "Spider-Man", "Miles Morales", "Earth-TRN700", "Up", "3"]]
    
    var body: some View {
        HStack {
            Text("Heroes Leaderboards")
                .font(StyleFont.mediumTitle)
                .foregroundColor(.white)
            
            Spacer()
            
            Button {
                print("View all button tapped")
            } label: {
                Text("View all")
                    .font(StyleFont.universeName)
                    .tint(Color(hexString: "DA5961"))
            }
        }
        
        LazyVStack {
            ForEach(heroes, id: \.self) { hero in
                HeroesLeaderboardsCell(image: hero[0], heroName: hero[1], heroRealName: hero[2], universeName: hero[3], position: hero[4], positionNumber: hero[5])
            }
        }
    }
}

struct HeroesLeaderboardRow_Previews: PreviewProvider {
    static var previews: some View {
        HeroesLeaderboardRow()
    }
}
