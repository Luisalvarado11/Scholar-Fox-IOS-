//
//  ContentView.swift
//  scrollview
//
//  Created by Marco Gabriel on 9/6/22.
//

import SwiftUI

struct Second: View {
    // @State var card: card_info
//    @State var x: [CGFloat] = [0, 0, 0, 0, 0, 0, 0]
//    @State var degree: [Double] = [0, 0, 0, 0, 0, 0, 0]
    // var card: card_info

    var body: some View {
        // overviews that aligns together
        ZStack {
            // when it runs out of images it returns everything back
//            Button(action: {
//                for i in 0..<card_info.x {
//                    card_info.x = 0
//                }
//
//                for i in 0..<card_info.degree {
//                    card_info.degree = 0
//                }
//
//            }) {
//                Image(systemName: "return")
//            }

            ZStack {
                ForEach(card_info.data.reversed()) { card in
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

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        Second()
    }
}
