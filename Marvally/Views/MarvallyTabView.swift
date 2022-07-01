//
//  MarvallyTabView.swift
//  Marvally
//
//  Created by MacBook on 01/07/22.
//

import SwiftUI

enum CurrentView: String {
    case dashboard
    case followed
    case profile
}

struct MarvallyTabView: View {
    @SceneStorage("currentView") var currentView = CurrentView.dashboard
    
    var body: some View {
        TabView(selection: $currentView) {
            NavigationView {
                DashboardView()
                    .navigationBarHidden(true)
            }
            .tabItem {
                Image(uiImage: UIImage(named: "House")!)
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                Text("Dashboard")
            }
            
            NavigationView {
                DashboardView()
                    .navigationBarHidden(true)
            }
            .tabItem {
                Image(uiImage: UIImage(named: "Trophy")!)
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                Text("Followed")
            }
            
            NavigationView {
                DashboardView()
                    .navigationBarHidden(true)
            }
            .tabItem {
                Image(uiImage: UIImage(named: "Person")!)
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                Text("Profile")
            }
        }
    }
}

struct MarvallyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MarvallyTabView()
            .preferredColorScheme(.dark)
    }
}
