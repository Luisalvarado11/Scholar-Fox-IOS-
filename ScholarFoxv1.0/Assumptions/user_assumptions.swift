//
//  user_assumptions.swift
//  ScholarFoxv1.0
//
//  Created by Marco Gabriel on 9/13/22.
//

import SwiftUI

// a struct for schools


struct user_assumptions: View {
    // @State private var gpa: Double = 0
    @AppStorage("gpa") var gpa: Double = 0
    // @State private var major: String = ""
    @AppStorage("major") var major: String = ""
    @State private var showing = false
    
    // shows the phone
    var body: some View {
        // other code
        // VStack {
        NavigationView {
            ZStack(alignment: .bottomLeading) {
                VStack {
                    Text("Assumptions Page")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.black)
                        .border(Color.purple, width: 4)
                        .padding()
                    
                    // Section(header: Text("GPA")) {
                    Text("GPA")
                        .font(.headline)
                        .fontWeight(.black)
                        .foregroundColor(.black)
                        .padding()
                    
                    // GPA text field
                    TextField("Enter Your GPA:", value: $gpa, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.center)
                        // }
                        .padding()
                    
                    // change screen
                    NavigationLink(destination: SwipeViewGPA()) {
                        Image(systemName: "number.square.fill")
                            .foregroundStyle(Color.blue)
                    }
//                    // using a different option to change screen
//                    Button(action: {
//                        self.showing.toggle()
//                    }) {
//                        Text("show detail")
//                    }.sheet(isPresented: $showing) {
//                        SwipeView()
//                    }
                    
                    // Section(header: Text("Major")) {
                    Text("Major")
                        .font(.headline)
                        .fontWeight(.black)
                        .foregroundColor(.black)
                        .padding()
                    
                    TextField("Enter your a major ", text: $major)
                        //.keyboardType(.default)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    // change screen
                    NavigationLink(destination: SwipeViewMajors()) {
                        Image(systemName: "house.fill")
                            .foregroundStyle(Color.red)
                    }

                    // header for school
                    // Section(header: Text("School")) {
//                    Text("School")
//                        .font(.headline)
//                        .fontWeight(.black)
//                        .foregroundColor(.black)
//                        .padding()
                    // first: takes the converted amount
                    // second: displaying the information
//                    Text("\(assumeForGpa(gpa))")
                    // Text("\(assumeForMajor(major))")
                       // .padding()
                }
                .background(
                    Image("sand_two")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: 400, height: 850)
                )
            }
        }
    }
}

struct user_assumptions_Previews: PreviewProvider {
    static var previews: some View {
        user_assumptions()
            .previewInterfaceOrientation(.portrait)
    }
}
