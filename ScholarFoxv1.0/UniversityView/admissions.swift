//
//  admissions.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 11/5/22.
//

import SwiftUI

//UC Admissions
struct admissions: View {
    var UCDetail: University
    var body: some View {
        Spacer()
        Text("Admissions")
            .font(.system(.largeTitle, design: .serif))
            .padding()
        
        Image(systemName: "graduationcap.fill")
            .foregroundColor(Color.yellow)
            .padding()

        HStack(alignment: .center, spacing: 30) {
            Text("Institution Type: Public")
                .font(.system(.body, design: .serif))
            Text("4 Year University")
                .font(.system(.body, design: .serif))
        }
        Image(systemName: "calendar.circle.fill")
            .foregroundColor(Color.purple)
            .padding()
        Text("Academic Year Calendar: \(UCDetail.academic_calander)")
            .font(.system(.body, design: .serif))
        
        Image(systemName: "person.crop.circle.fill.badge.checkmark")
            .foregroundColor(Color.blue)
            .padding()

        HStack(alignment: .center, spacing: 30) {
            Text("Acceptance Rate: \(UCDetail.acceptanceRating)")
                .font(.system(.body, design: .serif))

            Text("Transfer Rate: \(UCDetail.transfer)")
                .font(.system(.body, design: .serif))
        }
        Image(systemName: "list.clipboard")
            .foregroundColor(Color.gray)
            .padding()
        HStack(alignment: .center, spacing: 30) {
            Text("Students Enrolled by GPA: \(UCDetail.gpa)")
                .font(.system(.body, design: .serif))
        }
    }
}

//csu admissions view
struct csuadmissions: View {
    var csuDetail: University
    var body: some View {
        Spacer()
        Text("Admissions")
            .font(.system(.largeTitle, design: .serif))
            .padding()
        
        Image(systemName: "graduationcap.fill")
            .foregroundColor(Color.yellow)
            .padding()

        HStack(alignment: .center, spacing: 30) {
            Text("Institution Type: Public")
                .font(.system(.body, design: .serif))
            Text("4 Year University")
                .font(.system(.body, design: .serif))
        }
        Image(systemName: "calendar.circle.fill")
            .foregroundColor(Color.purple)
            .padding()
        Text("Academic Year Calendar: \(csuDetail.academic_calander)")
            .font(.system(.body, design: .serif))
        
        Image(systemName: "person.crop.circle.fill.badge.checkmark")
            .foregroundColor(Color.blue)
            .padding()

        HStack(alignment: .center, spacing: 30) {
            Text("Acceptance Rate: \(csuDetail.acceptanceRating)")
                .font(.system(.body, design: .serif))

            Text("Transfer Rate: \(csuDetail.transfer)")
                .font(.system(.body, design: .serif))
        }
        Image(systemName: "list.clipboard")
            .foregroundColor(Color.gray)
            .padding()
        HStack(alignment: .center, spacing: 30) {
            Text("Students Enrolled by GPA: \(csuDetail.gpa)")
                .font(.system(.body, design: .serif))
        }
    }
}

struct admissions_Previews: PreviewProvider {
    static var previews: some View {
        admissions(UCDetail: uc[1])
    }
}
