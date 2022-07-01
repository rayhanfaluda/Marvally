//
//  HeroesLeaderboardsCell.swift
//  Marvally
//
//  Created by MacBook on 01/07/22.
//

import SwiftUI

struct HeroesLeaderboardsCell: View {
    var image: String
    var heroName: String
    var heroRealName: String
    var universeName: String
    var position: String
    var positionNumber: String
    
    var body: some View {
        HStack {
            Image(uiImage: UIImage(named: image)!)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading) {
                Text(heroName)
                    .font(StyleFont.heroName)
                    .foregroundColor(.white)
                
                Text(heroRealName)
                    .font(StyleFont.heroRealName)
                    .foregroundColor(.white)
                
                Text(universeName)
                    .font(StyleFont.universeName)
                    .foregroundColor(Color(hexString: "6B6B6B"))
                    .offset(y: 5)
            }
            .padding(.leading, 6)
            .offset(y: -2.5)
            
            Spacer()
            
            Capsule()
                .fill(Color(hexString: "33353F"))
                .frame(width: 66, height: 30, alignment: .center)
                .overlay {
                    HStack {
                        Image(uiImage: UIImage(named: position)!)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20, alignment: .center)
                        
                        Text(positionNumber)
                            .font(StyleFont.customTitle3)
                            .foregroundColor(.white)
                    }
                }
        }
    }
}

struct HeroesLeaderboardsCell_Previews: PreviewProvider {
    static var previews: some View {
        HeroesLeaderboardsCell(image: "Wiccan", heroName: "Wiccan", heroRealName: "William Kaplan", universeName: "Earth-616", position: "Up", positionNumber: "2")
            .preferredColorScheme(.dark)
    }
}
