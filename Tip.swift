//
//  Tip.swift
//  StarLight
//
//  Created by Erik Pantoja on 10/23/21.
//

import Foundation


struct Tip: Decodable {
    let text: String
    let children: [Tip]?
    
    
}
