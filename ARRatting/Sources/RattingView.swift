//
//  RattingView.swift
//  ARRatting
//
//  Created by Rohit Makwana on 21/04/20.
//  Copyright © 2020 Rohit Makwana. All rights reserved.
//

import SwiftUI

struct RattingView: View {
    
    @Binding var rating: Int
    private let maximumRating = 5
    var offColor = Color.gray
    var onColor = Color.black.opacity(0.8)

    var body: some View {
        
        HStack {
            ForEach(1..<maximumRating + 1) { number in
                Image(systemName: "star.fill")
                    .foregroundColor(number > self.rating ? self.offColor : self.onColor)
                    .onTapGesture {
                        self.rating = number
                }
            }
        }
    }
}


struct RattingView_Previews: PreviewProvider {
    static var previews: some View {
        RattingView(rating: .constant(3))
    }
}
