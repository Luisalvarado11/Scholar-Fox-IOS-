//
//  Universities.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 9/13/22.
//

import SwiftUI

struct Universities: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 14) {
                Text("University View")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Text("California State Universities")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                //Calls in CSUScroll UI viewpage
                CSUScoll()
                Spacer()
                
                Text("University of California")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                //Calls in UCScroll UI viewpage
                UCScroll()
                Spacer()
            }
        }
    }
}

struct Universities_Previews: PreviewProvider {
    static var previews: some View {
        Universities()
    }
}
