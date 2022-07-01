//
//  EventYouMightLikeCollection.swift
//  Marvally
//
//  Created by MacBook on 30/06/22.
//

import SwiftUI

struct EventYouMightLikeCollection: View {
    let events = [["Civil War", "Civil War"],
                  ["War of The Realms", "War of The Realms"],
                  ["Empyre", "Empyre"]]
    
    var body: some View {
        Text("Events you might like")
            .font(StyleFont.mediumTitle)
            .foregroundColor(.white)
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(events, id: \.self) { event in
                    EventYouMightLikeCard(image: event[0], title: event[1])
                }
            }
        }
    }
}

struct EventYouMightLikeCollection_Previews: PreviewProvider {
    static var previews: some View {
        EventYouMightLikeCollection()
    }
}
