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
            //Vertical Stack
            VStack(alignment: .leading, spacing: 14) {
                HStack {
                    //Display's Text
                    Text("University View")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    
                    //Allows button to be pressed and shows new view
                    Button(action: { self.showModel.toggle() }, label: {
                        Image(systemName: "info.circle")
                    })
                }
                Text("California State Universities")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding()
                Spacer()
                
                    //loads sample() view as a pop-up
                    .sheet(isPresented: self.$showModel) {
                        sample()
                    }

                // Calls in CSUScroll UI viewpage
                CSUScoll()
                Spacer()
                
                //Displays Text
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
