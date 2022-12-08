//
//  UCScroll.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 9/19/22.
//

import SwiftUI

struct UCScroll: View {
    var ucs: [University] = uc
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(ucs.shuffled()) { uc in CardViews(cardview: uc)
                }
                .frame(maxHeight: 350)
                .scaledToFit()
                .padding(.horizontal)
                .shadow(radius: 5)
            }
        }
    }
}

struct UCScroll_Previews: PreviewProvider {
    static var previews: some View {
        UCScroll()
    }
}
