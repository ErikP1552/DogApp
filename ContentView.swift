//
//  ContentView.swift
//  StarLight
//
//  Created by Erik Pantoja on 10/22/21.
//

import SwiftUI
import UIKit


struct ContentView: View {
    let location: Location
    
    var body: some View {
        
            ScrollView {
        
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .padding(.horizontal)
            
            
            Text(location.more)
                .padding(.horizontal)
            
            }
        }
    }




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(location: Location.example)
        }
    }
}


