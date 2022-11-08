//
//  UCRating.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 11/5/22.
//

import SwiftUI

struct UCRating: View {
    var UCDetail: University
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1 ... (Int(UCDetail.rating)), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .foregroundColor(Color.orange)
            }
        }
    }
}

struct CSURating: View {
    var csuDetail: University
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1 ... (Int(csuDetail.rating)), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .foregroundColor(Color.orange)
            }
        }
    }
}

struct UCRating_Previews: PreviewProvider {
    static var previews: some View {
        UCRating(UCDetail: uc[1])
    }
}
