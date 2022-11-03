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
                ForEach(csus) { csu in  CSUCardView(csucard: csu)
//                    GeometryReader { geometry in CSUCardView(csucard: csu)
//                            .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX) / -20), axis: (x: 0, y: 10.0, z: 0))
//                    }
                    .frame(maxHeight: 400)
                    .padding(.horizontal)
                    .shadow(radius: 5)
                }
            }
        }
    }
}

struct CSUScoll_Previews: PreviewProvider {
    static var previews: some View {
        CSUScoll()
    }
}
