//
//  Financial.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 11/5/22.
//

import SwiftUI

struct Financial: View {
    var UCDetail: University
    var body: some View {
        Spacer()
        Text("Tuition")
            .font(.system(.largeTitle, design: .serif))
            .padding()
        HStack(alignment: .center, spacing: 30) {
            Image(systemName: "dollarsign.circle.fill")
                .foregroundColor(Color.green)
            Text("Tuition Cost: $ \(UCDetail.average_cost)")
                .font(.system(.body, design: .serif))
            Image(systemName: "dollarsign.circle.fill")
                .foregroundColor(Color.green)
            Text("Out Of State Tuition : $\(UCDetail.out_of_state)")
                .font(.system(.body, design: .serif))
        }
        Divider()
            .frame(height: 4)
        
        Text("Description")
            .font(.system(.largeTitle, design: .serif))
        
        HStack(alignment: .center,spacing: 15) {
            Text(UCDetail.description)
                .font(.system(.body, design: .serif))
                .padding(10)
        }
    }
}

struct csuFinancial: View {
    var csuDetail: University
    var body: some View {
        Spacer()
        Text("Tuition")
            .font(.system(.largeTitle, design: .serif))
            .padding()
        HStack(alignment: .center, spacing: 30) {
            Image(systemName: "dollarsign.circle.fill")
                .foregroundColor(Color.green)
            Text("Tuition Cost: $ \(csuDetail.average_cost)")
                .font(.system(.body, design: .serif))
            Image(systemName: "dollarsign.circle.fill")
                .foregroundColor(Color.green)
            Text("Out Of State Tuition : $\(csuDetail.out_of_state)")
                .font(.system(.body, design: .serif))
        }
        Divider()
            .frame(height: 4)
        
        Text("Description")
            .font(.system(.largeTitle, design: .serif))
        
        HStack(alignment: .center,spacing: 15) {
            Text(csuDetail.description)
                .font(.system(.body, design: .serif))
                .padding(10)
        }
    }
}

struct Financial_Previews: PreviewProvider {
    static var previews: some View {
        Financial(UCDetail: uc[1])
    }
}
