//
//  PopularEventCard.swift
//  Marvally
//
//  Created by MacBook on 30/06/22.
//

import SwiftUI

struct PopularEventCard: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Image(uiImage: UIImage(named: "Empyre")!)
                .resizable()
                .scaledToFill()
                .frame(height: 255, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading) {
                Spacer()
                
                Text("Empyre")
                    .font(StyleFont.veryLargeTitle)
                    .foregroundColor(.white)
                    .shadow(color: Color.init(.sRGB, red: 0.85, green: 0.35, blue: 0.38, opacity: 1.0), radius: 4)
                
                Text("(2020 - Now)")
                    .font(StyleFont.subtitle)
                    .foregroundColor(.white)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 82)
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
                    
                    HStack {
                        Text("brings the Avengers and Fantastic Four together for the latest cosmic affair with the Kree and Skrull turning Earth into a battleground.")
                            .font(StyleFont.captionSmall)
                            .foregroundColor(.white)
                            .padding(.trailing, 12)
                        
                        VStack {
                            Button {
                                print("read more tapped")
                            } label: {
                                Image(systemName: "arrow.forward.circle.fill")
                                    .font(.title)
                            }
                            .tint(Color(hexString: "DA5961"))
                            
                            Text("read more")
                                .font(StyleFont.captionSmall)
                                .foregroundColor(Color(hexString: "DA5961"))
                        }
                    }
                    .padding()
                }
            }
            .padding()
        }
    }
}

struct PopularEventCard_Previews: PreviewProvider {
    static var previews: some View {
        PopularEventCard()
    }
}
