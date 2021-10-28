//
//  Locations.swift
//  StarLight
//
//  Created by Erik Pantoja on 10/23/21.
//

import Foundation
import CoreLocation
import SwiftUI


class Locations: ObservableObject {
    let places: [Location]
    
    var primary: Location {
        places[0]
    }
    

    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
        
    }
}
