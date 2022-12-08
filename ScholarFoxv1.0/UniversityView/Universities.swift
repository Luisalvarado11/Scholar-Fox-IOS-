//
//  Universities.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 9/13/22.
//

import SwiftUI

struct Universities: View {
    // Detects finger touch on screen
    var hapticTouch = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModel: Bool = false
    var body: some View {
        ScrollView(showsIndicators: false) {
            // Vertical Stack
            VStack(alignment: .leading, spacing: 14) {
                HStack {
                    // Display's Text
                    Text("University View")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                }
                Text("California State Universities")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding()
                Spacer()

                // Calls in CSUScroll UI viewpage
                CSUScoll()
                Spacer()

                // Displays Text
                Text("University of California")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding()

                // Calls in UCScroll UI viewpage
                UCScroll()
                Spacer()
            }
        }
        .background(
            Image("Sand")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: 450, height: 850))
    }
}

struct Universities_Previews: PreviewProvider {
    static var previews: some View {
        Universities()
    }
}
