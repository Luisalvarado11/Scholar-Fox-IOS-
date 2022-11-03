//
//  user_assumptions.swift
//  ScholarFoxv1.0
//
//  Created by Marco Gabriel on 9/13/22.
//

import SwiftUI

struct user_assumptions: View {
    @AppStorage("gpa") var gpa: Double = 0.0
    @AppStorage("major") var major: String = ""
    @State private var showing = false
    
    // shows the phone
    var body: some View {
        NavigationView {
            VStack(spacing: .zero) {
                // Fun - trial code
                Button(action: {
                    playSound()
                }) {
                    Image(systemName: "house.fill")
                    Text("MAGIC")
                        .font(.headline)
                        .fontWeight(.black)
                        .foregroundStyle(Color.black)
                }
                
                // main code
                Form {
                    
                    // asking for gpa
                    Section("GPA") {
                        TextField("Please enter your GPA: ", value: $gpa, format: .number)
                            .keyboardType(.decimalPad)
                    }
                    
                    // button to show next view for gpa
                    NavigationLink(destination: SwipeViewGPA()) {
                        Text("Enter")
                            .foregroundStyle(Color.blue)
                    }
                    .buttonStyle(.borderedProminent)
                    
                    // asking for major
                    Section("Major") {
                        TextField("Please enter your major", text: $major)
                            .keyboardType(.default)
                    }
                    
                    // button to show next view for major
                    NavigationLink(destination: SwipeViewMajors()) {
                        Text("Enter")
                            .foregroundStyle(Color.red)
                    }
                }
            }
            // The title of the top of the page
            .navigationTitle("Assumptions")
            Image("school_image")
        }
    }
}

struct user_assumptions_Previews: PreviewProvider {
    static var previews: some View {
        user_assumptions()
            .previewInterfaceOrientation(.portrait)
    }
}
