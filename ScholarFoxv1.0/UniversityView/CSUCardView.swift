//
//  CSUCardView.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 9/14/22.
//

import SwiftUI

struct CSUCardView: View {
    var csucard: University
    
    var hapticTouch = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModel: Bool = false
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Image(csucard.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(25)
                
            VStack(alignment: .leading, spacing: 12) {
                Text(csucard.name)
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
                CSUDetails(csuDetail: csu[0])
            }
        }
    }
}

struct CSUCardView_Previews: PreviewProvider {
    static var previews: some View {
        CSUCardView(csucard: csu[0])
            .previewLayout(.sizeThatFits)
    }
}
