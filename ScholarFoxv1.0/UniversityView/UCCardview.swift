//
//  UCCardview.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 9/15/22.
//

import SwiftUI

struct UCCardview: View {
    var uccard: Uuniversity
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Image(uccard.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(25)
            }
            VStack(alignment: .leading, spacing: 12) {
                Text(uccard.name)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .lineLimit(2)
                HStack(alignment: .center, spacing: 12) {
                    Text(uccard.city)
                        .font(.system(.body, design: .serif))
                    Text(uccard.acceptanceRating)
                        .font(.system(.body, design: .serif))
                }
                HStack(alignment: .center, spacing: 12) {
                    Text(uccard.average_cost)
                        .font(.system(.body, design: .serif))
                    
                    Text(uccard.minimum_gpa)
                        .font(.system(.body, design: .serif))
                }
                Link(destination:URL(string: uccard.recommendations)!, label: {
                    Label(
                        title: {Text("Apply")},
                        icon: {Image(systemName: "paperplane.fill")})
                })
            }
            .padding()
        }
    }
}

struct UCCardview_Previews: PreviewProvider {
    static var previews: some View {
        UCCardview(uccard: uc[0])
    }
}
