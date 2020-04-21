//
//  ContentView.swift
//  ARRatting
//
//  Created by Rohit Makwana on 21/04/20.
//  Copyright © 2020 Rohit Makwana. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var rating: Int
    var body: some View {
        RattingView(rating: $rating)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rating: 3)
    }
}
