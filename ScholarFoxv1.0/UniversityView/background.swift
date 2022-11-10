//
//  background.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 11/9/22.
//

import SwiftUI

struct background: View {
    var csus: University
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        HStack {
            Text("Sample")
        }
        .background(
            Image(csus.image)
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .frame(width: 200, height: 200)
            .opacity(0.3))
    }
}

struct background_Previews: PreviewProvider {
    static var previews: some View {
        background(csus: csu[1])
    }
}
