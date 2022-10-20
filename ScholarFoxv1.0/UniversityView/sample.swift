//
//  sample.swift
//  ScholarFoxv1.0
//
//  Created by Luis Alvarado on 10/13/22.
//

import SwiftUI

struct sample: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("General Requirements for CSU's")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Text("Admission offices at the 23 campuses use three factors to determine eligibility.")
                .font(.headline)
                .padding()
            Text("1) Meet Specific class requirements.")
                .font(.title3)
                .fontWeight(.bold)
            Image("req")
                .resizable()
                .scaledToFit()
                .padding()
            Text("2) Grades")
                .font(.title3)
                .fontWeight(.bold)
            
            Text("The grades you earn in high school are the most important factor in CSU admission decisions. Your high school grade point average is calculated using your grades in all your college prep a-g classes completed after the 9th grade.")
                .font(.headline)
            Text("The minimum requirement for acceptance for california residents is 2.5 or higher.")
                .font(.headline)
                .foregroundColor(Color.red)
            Text("3) Graduation from High School")
                .font(.title3)
                .fontWeight(.bold)
            
                .font(.headline)
        }
        .background(
            Image("Sand")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: 450, height: 850))
    }
    
}

struct sample_Previews: PreviewProvider {
    static var previews: some View {
        sample()
    }
}
