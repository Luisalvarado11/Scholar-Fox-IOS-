//
//  Financial.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 11/5/22.
//

import SwiftUI

struct Financial: View {
    let financial: University

    init(financial: University) {
        self.financial = financial
    }

    var body: some View {
        Spacer()
        Text("Tuition")
            .font(.system(.largeTitle, design: .serif))
            .padding()
        HStack(alignment: .center, spacing: 30) {
            Image(systemName: "dollarsign.circle.fill")
                .foregroundColor(Color.green)
            Text("In-State Tuition Cost: $ \(financial.average_cost)")
                .font(.system(.body, design: .serif))
            Image(systemName: "dollarsign.circle.fill")
                .foregroundColor(Color.green)
            Text("Out Of State Tuition Cost : $\(financial.out_of_state)")
                .font(.system(.body, design: .serif))
        }
        Divider()
            .frame(height: 4)

        Text("Description")
            .font(.system(.largeTitle, design: .serif))

        HStack(alignment: .center, spacing: 15) {
            Text(financial.description)
                .font(.system(.body, design: .serif))
                .padding(10)
        }
    }
}

struct Financial_Previews: PreviewProvider {
    static var previews: some View {
        Financial(financial: uc[1])
    }
}
