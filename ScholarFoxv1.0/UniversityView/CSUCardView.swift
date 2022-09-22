//
//  CSUCardView.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 9/14/22.
//

import SwiftUI

struct CSUCardView: View {
    var csucard: University
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Image(csucard.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(25)
            }
            VStack(alignment: .leading, spacing: 12) {
                Text(csucard.name)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .lineLimit(2)
                HStack(alignment: .center, spacing: 12) {
                    Text(csucard.city)
                        .font(.system(.body, design: .serif))
                    Text(csucard.acceptanceRating)
                        .font(.system(.body, design: .serif))
                }
                HStack(alignment: .center, spacing: 12) {
                    Text(csucard.average_cost)
                        .font(.system(.body, design: .serif))
                    Text(csucard.minimum_gpa)
                        .font(.system(.body, design: .serif))
                }
                Link(destination:URL(string: csucard.recommendations)!, label: {
                    Label(
                        title: {Text("Apply")
                            .foregroundColor(Color.blue)},
                        icon: {Image(systemName: "paperplane.fill")})
                })
            }
        }
        .padding()
    }
}

struct CSUCardView_Previews: PreviewProvider {
    static var previews: some View {
        CSUCardView(csucard: csu[0])
            .previewLayout(.sizeThatFits)
    }
}
