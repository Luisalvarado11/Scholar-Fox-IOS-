//
//  CSUScoll.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 9/15/22.
//

import SwiftUI

struct CSUScoll: View {
    var csus: [University] = csu
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(csus.shuffled()) { csu in CSUCardView(csucard: csu)
                }
                .frame(maxHeight: 400)
                .padding(.horizontal)
                .shadow(radius: 5)
            }
        }
    }
}

struct CSUScoll_Previews: PreviewProvider {
    static var previews: some View {
        CSUScoll()
    }
}
