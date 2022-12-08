//
//  CardViews.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 12/8/22.
//

import SwiftUI

struct CardViews: View {
    let cardview: University
    
    var hapticTouch = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModel: Bool = false
    
    init(cardview: University) {
        self.cardview = cardview
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Image(cardview.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(25)
                
                VStack(alignment: .leading, spacing: 12) {
                    Text(cardview.name)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .lineLimit(2)
                }
            }
            .padding()
            
            .onTapGesture {
                self.hapticTouch.impactOccurred()
                self.showModel = true
            }
            .sheet(isPresented: self.$showModel) {
                Details(detail: self.cardview)
            }
        }
    }
}

struct CardViews_Previews: PreviewProvider {
    static var previews: some View {
        CardViews(cardview: csu[4])
    }
}
