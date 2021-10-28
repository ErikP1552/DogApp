//
//  StarLightApp.swift
//  StarLight
//
//  Created by Erik Pantoja on 10/22/21.
//

import SwiftUI

@main
struct StarLightApp: App {
   @StateObject var locations = Locations()
    
    var body: some Scene {
        
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                
                .tabItem {
                    Image(systemName: "infinity")
                    Text("Discover")
                }
                
                NavigationView {
                    WorldView()
                }
                
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Geography")
                }
                
                NavigationView{
                    TipsView()
                }
                
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Dog Tips")
                }
                
            }
            .environmentObject(locations)
        }
    }
}





