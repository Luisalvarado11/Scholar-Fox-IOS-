//
//  SwipeViewMajors.swift
//  ScholarFoxv1.0
//
//  Created by Marco Gabriel on 10/30/22.
//

import SwiftUI

struct SwipeViewMajors: View {
    @AppStorage("major") var major: String = ""

    var body: some View {
        // overviews that aligns together
        // Text("\(gpa)")
        // Text("\(major)")

        ZStack {
            ZStack {
                ForEach(card_info.data.filter { $0.MAJOR == major }) { card in
                    CardView(card: card)
                }
            }
            .padding(8)
            .zIndex(1.0)
            .background(
                Image("sand_two")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: 400, height: 850))
        }
    }
}

struct SwipeViewMajors_Previews: PreviewProvider {
    static var previews: some View {
        SwipeViewMajors()
    }
}
