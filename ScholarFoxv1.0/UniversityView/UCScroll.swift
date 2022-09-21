//
//  UCScroll.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 9/19/22.
//

import SwiftUI

struct UCScroll: View {
    var ucs: [Uuniversity] = uc
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(ucs) { uc in UCCardview(uccard: uc)
                }
                .frame(maxWidth: 700, maxHeight: 540)
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
