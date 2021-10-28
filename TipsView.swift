//
//  TipsView.swift
//  StarLight
//
//  Created by Erik Pantoja on 10/23/21.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
        
    }
    
    
    var body: some View {
        List(tips, id: \.text, children: \.children) { tip in
            if tip.children != nil {
            Label(tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            } else {
                Text(tip.text)
            }
    }
        .navigationBarTitle("Dog Tips")
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
}
