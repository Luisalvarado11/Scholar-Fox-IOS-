//
//  UCCardview.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 9/15/22.
//

import SwiftUI

struct UCCardview: View {
    var uccard: Uuniversity

    var hapticTouch = UIImpactFeedbackGenerator(style: .heavy)

    @State private var showModel: Bool = false

    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Image(uccard.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(25)

                VStack(alignment: .leading, spacing: 12) {
                    Text(uccard.name)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .lineLimit(3)
                }
                .padding()
            }
            .onTapGesture {
                self.hapticTouch.impactOccurred()
                self.showModel = true
            }
            .sheet(isPresented: self.$showModel) {
                UCDetails(UCDetail: uc[0])
            }
        }
    }
}

struct UCCardview_Previews: PreviewProvider {
    static var previews: some View {
        UCCardview(uccard: uc[0])
            .previewLayout(.sizeThatFits)
    }
}
