//
//  EventYouMightLikeCard.swift
//  Marvally
//
//  Created by MacBook on 30/06/22.
//

import SwiftUI

struct EventYouMightLikeCard: View {
    var image: String
    var title: String
    
    var body: some View {
        ZStack {
            Image(uiImage: UIImage(named: image)!)
                .resizable()
                .scaledToFill()
                .frame(width: 170, height: 100, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Text(title)
                .font(StyleFont.mediumTitle)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .padding()
                .frame(width: 170, height: 100, alignment: .center)
        }
    }
}

struct EventYouMightLikeCard_Previews: PreviewProvider {
    static var previews: some View {
        EventYouMightLikeCard(image: "Civil War", title: "Civil War")
    }
}
