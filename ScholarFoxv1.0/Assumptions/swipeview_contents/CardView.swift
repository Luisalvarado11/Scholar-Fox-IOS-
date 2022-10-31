//
//  CardView.swift
//  ScholarFoxv1.0
//
//  Created by Marco Gabriel on 10/6/22.
//

import SwiftUI

struct CardView: View {
    @State var card: card_info
    
    // MARK: - Drawing Constant
    let cardGradient = Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.5)])
    
    var body: some View {
        
        // for the images alignment
        ZStack(alignment: .bottomLeading) {
            // csuf image
            VStack {
                Image(card.image)
                    .resizable()
                    .frame(height: 400)
            
            }
            .background(.white)
            .cornerRadius(25)

            //  csuf text
            VStack(alignment: .leading, spacing: 12) {
                // csuf text
                Text(card.name)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Text(card.descrption)
                    .font(.body)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
            .padding(.bottom, 50)
            .padding(.leading, 10)
            
        }
        .cornerRadius(8)
        .offset(x: card.x, y: card.y)
        .rotationEffect(.init(degrees: card.degree))
        .gesture (
            DragGesture()
                .onChanged { value in
                    withAnimation(.default) {
                        card.x = value.translation.width
                        // MARK: - BUG 5
                        card.y = value.translation.height
                        card.degree = 7 * (value.translation.width > 0 ? 1 : -1)
                    }
                }
                .onEnded { (value) in
                    withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 8, initialVelocity: 0)) {
                        switch value.translation.width {
                        case 0...100:
                            card.x = 0; card.degree = 0; card.y = 0
                        case let x where x > 100:
                            card.x = 500; card.degree = 12
                        case (-100)...(-1):
                            card.x = 0; card.degree = 0; card.y = 0
                        case let x where x < -100:
                            card.x  = -500; card.degree = -12
                        default:
                            card.x = 0; card.y = 0
                        }
                    }
                }
        )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: .data[0])
    }
}
