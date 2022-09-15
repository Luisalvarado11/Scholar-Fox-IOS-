//
//  second.swift
//  ScholarFoxv1.0
//
//  Created by Marco Gabriel on 9/15/22.
//

import SwiftUI

struct Second: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Text("This is the image")
            VStack {
                Image("csuf")
                    .resizable()
                    .frame(height: 410)
            }
            .background(.white)
            .cornerRadius(25)
        }
    }
}

struct second_Previews: PreviewProvider {
    static var previews: some View {
        Second()
    }
}
