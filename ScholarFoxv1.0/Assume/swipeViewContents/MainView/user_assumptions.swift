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
    
    // shows the phone
    var body: some View {
        NavigationView {
            VStack(spacing: .zero) {
                // meant for the background
                Text("")
                
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
                    
                    // .buttonStyle(.borderedProminent)
                    
                    // asking for major
                    Section("Popular Major") {
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
            .background(
                Image("Sand")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
            )
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        // funny sound on the fox logo
                        Button(action: {
                            playSound()
                        }) {
                            Image("fox_logo_v2")
                                .resizable()
                                .frame(width: 45, height: 45)
                                .shadow(radius: 10)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.orange, lineWidth: 2))
                        }
                        
                        // the title
                        Text("Assumptions")
                            .font(.title)
                            .bold()
                    }
                }
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
