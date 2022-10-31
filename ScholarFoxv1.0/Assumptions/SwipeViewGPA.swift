//
//  ContentView.swift
//  scrollview
//
//  Created by Marco Gabriel on 9/6/22.
//

import SwiftUI

struct SwipeViewGPA: View {
    @AppStorage("gpa") var gpa: Double = 0
    
    var body: some View {
        // overviews that aligns together
        // Text("\(gpa)")
        // Text("\(major)")
        
        ZStack {
            ZStack {
                ForEach(card_info.data.filter {( $0.GPA >= gpa || $0.GPA > 5)}) { card in
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

struct SwipeViewGPA_Previews: PreviewProvider {
    static var previews: some View {
        SwipeViewGPA()
    }
}
