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
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                CSUScoll()
                Spacer()
                
                Text("University of California")
                    .font(.title3)
                    .fontWeight(.ultraLight)
                    .padding()
            }
        }
    }
}

struct Universities_Previews: PreviewProvider {
    static var previews: some View {
        Universities()
    }
}
