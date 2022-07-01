//
//  DashboardCard.swift
//  Marvally
//
//  Created by MacBook on 29/06/22.
//

import SwiftUI

struct DashboardCard: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(height: 120)
                .foregroundColor(Color(hexString: "33353F"))
            
            HStack {
                Button {
                    print("Heroes button tapped")
                } label: {
                    VStack {
                        Image(uiImage: UIImage(named: "Heroes")!)
                            .frame(height: 45)
                        
                        Text("Heroes")
                            .font(StyleFont.dashboardText)
                            .foregroundColor(.white)
                    }
                }
                .padding(.horizontal)
                
                Button {
                    print("Teams button tapped")
                } label: {
                    VStack {
                        Image(uiImage: UIImage(named: "Teams")!)
                            .frame(height: 45)
                            
                        Text("Teams")
                            .font(StyleFont.dashboardText)
                            .foregroundColor(.white)
                    }
                }
                .padding(.horizontal)
                
                Button {
                    print("Universe button tapped")
                } label: {
                    VStack {
                        Image(uiImage: UIImage(named: "Universe")!)
                            .frame(height: 45)
                        
                        Text("Universe")
                            .font(StyleFont.dashboardText)
                            .foregroundColor(.white)
                    }
                }
                .padding(.horizontal)
                
                Button {
                    print("Events button tapped")
                } label: {
                    VStack {
                        Image(uiImage: UIImage(named: "Events")!)
                            .frame(height: 45)
                        
                        Text("Events")
                            .font(StyleFont.dashboardText)
                            .foregroundColor(.white)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct DashboardCard_Previews: PreviewProvider {
    static var previews: some View {
        DashboardCard()
    }
}
